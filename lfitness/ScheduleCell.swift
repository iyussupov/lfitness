//
//  ScheduleCell.swift
//  lfitness
//
//  Created by Dev1 on 3/12/16.
//  Copyright © 2016 fxofficeapp. All rights reserved.
//

import UIKit

class ScheduleCell: UITableViewCell {
        
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var timeLbl: UILabel!
    @IBOutlet weak var placeLbl: UILabel!
    @IBOutlet weak var durationLbl: UILabel!
    @IBOutlet weak var contentWrap: UIView!
    @IBOutlet weak var contentLbl: UILabel!
        
        private var _schedule: Schedule?
        
        var schedule: Schedule? {
            return _schedule
        }
        
        override func drawRect(rect: CGRect) {
            //        featuredImg.clipsToBounds = true
        }
    
        
        func configureCell(schedule: Schedule) {
            
            
            
            
            let sportTypes = [[
                
                "types":"HEART-X PRO",
                "place":"БАССЕЙН"],[
                "types":"HEART-X",
                "place":"БАССЕЙН"],[
                "types":"BODY FIT",
                "place":"БАССЕЙН"],[
                "types":"LOW CORE",
                "place":"ЗАЛ 1"],[
                "types":"BODY ROCK",
                "place":"БАССЕЙН"],[
                "types":"X-RACE PRO",
                "place":"ЗАЛ 2"],[
                "types":"STREET FIGHT",
                "place":"ЗАЛ 1"],[
                "types":"X-PUMP",
                "place":"ЗАЛ 1"],[
                "types":"ATLETICA",
                                                "place":"БАССЕЙН"],[
                                                    "types":"X-RACE AIR",
                                                    "place":"ЗАЛ 2"],[
                                                        "types":"WHITE COLLARS FUN",
                                                        "place":"РИНГ"],[
                                                            "types":"PILATES MAT",
                                                            "place":"ЗАЛ 1"],[
                                                                "types":"INTRO",
                                                                "place":"БАССЕЙН"],[
                                                                    "types":"BODY&MIND",
                                                                    "place":"ЗАЛ 1"],[
                                                                        "types":"YOGA (HIMALAYAN)",
                                                                        "place":"ЗАЛ 1"],[
                                                                            "types":"САМОДЕЛКИН",
                                                                            "place":"ДЕТ. СТУДИЯ"],[
                                                                                "types":"ЛОГОРИТМИКА",
                                                                                "place":"ДЕТ. ЗАЛ"],[
                                                                                    "types":"ОКРУЖАЮЩИЙ МИР",
                                                                                    "place":"ДЕТ. СТУДИЯ"],[
                                                                                        "types":"С ГОЛОВЫ ДО ПЯТ",
                                                                                        "place":"ДЕТ. ЗАЛ"],[
                                                                                            "types":"DANCE MIX",
                                                                                            "place":"ЗАЛ 1"],[
                                                                                                "types":"ПОДВИЖНЫЕ ИГРЫ",
                                                                                                "place":"ДЕТ. ЗАЛ"],[
                                                                                                    "types":"ОФП",
                                                                                                    "place":"ДЕТ. ЗАЛ"],[
                                                                                                        "types":"ЛАБИРИНТ",
                                                                                                        "place":"ДЕТ. ЗАЛ"],[
                                                                                                            "types":"СКАЗКИ-РАССКАЗКИ",
                                                                                                            "place":"ДЕТ. СТУДИЯ"],[
                                                                                                                "types":"ЗДОРОВЫЕ НОЖКИ",
                                                                                                                "place":"ДЕТ. ЗАЛ"],[
                                                                                                                    "types":"STEP ADV",
                                                                                                                    "place":"ЗАЛ 1"],[
                                                                                                                        "types":"X-GRAVITY FUNCLUB",
                                                                                                                        "place":"ЗАЛ ФТ"],[
                                                                                                                            "types":"КОТ И МЫШИ",
                                                                                                                            "place":"ДЕТ. ЗАЛ"],[
                                                                                                                                "types":"BODYROCK",
                                                                                                                                "place":"ЗАЛ 1"],[
                                                                                                                                    "types":"ПЕРЕПРАВА",
                                                                                                                                    "place":"ДЕТ. ЗАЛ"],[
                                                                                                                                        "types":"FLEX FIT",
                                                                                                                                        "place":"ЗАЛ 1"],[
                                                                                                                                            "types":"АКУЛЫ",
                                                                                                                                            "place":"БАССЕЙН"],[
                                                                                                                                                "types":"КАСАТКИ",
                                                                                                                                                "place":"БАССЕЙН"],[
                                                                                                                                                    "types":"YOGA (HATHA)",
                                                                                                                                                    "place":"ЗАЛ 1"],[
                                                                                                                                                        "types":"BOXING",
                                                                                                                                                        "place":"РИНГ"],[
                                                                                                                                                            "types":"BODY STRETCH",
                                                                                                                                                            "place":"ДЕТ. ЗАЛ"],[
                                                                                                                                                                "types":"ВОЛЬНАЯ БОРЬБА",
                                                                                                                                                                "place":"РИНГ"],[
                                                                                                                                                                    "types":"PILATES ADVANCED",
                                                                                                                                                                    "place":"ЗАЛ 2"],[
                                                                                                                                                                        "types":"ТАНЦЫ",
                                                                                                                                                                        "place":"ДЕТ. ЗАЛ"],[
                                                                                                                                                                            "types":"ФУТБОЛ",
                                                                                                                                                                            "place":"ДЕТ. ЗАЛ"],[
                                                                                                                                                                                "types":"MIX FIGHT",
                                                                                                                                                                                "place":"ЗАЛ ФТ"],[
                                                                                                                                                                                    "types":"АКРОБАТИКА",
                                                                                                                                                                                    "place":"ДЕТ. ЗАЛ"],[
                                                                                                                                                                                        "types":"X-DANCE",
                                                                                                                                                                                        "place":"ДЕТ. ЗАЛ"],[
                                                                                                                                                                                            "types":"ВОЛШЕБНАЯ ТРОПИНКА",
                                                                                                                                                                                            "place":"ДЕТ. ЗАЛ"],[
                                                                                                                                                                                                "types":"FITNESS ASSORTI",
                                                                                                                                                                                                "place":"ДЕТ. ЗАЛ"],[
                                                                                                                                                                                                    "types":"BABY DANCE",
                                                                                                                                                                                                    "place":"ДЕТ. ЗАЛ"],[
                                                                                                                                                                                                        "types":"ЗДОРОВЫЙ МАЛЫШ",
                                                                                                                                                                                                        "place":"ДЕТ. ЗАЛ"],[
                                                                                                                                                                                                            "types":"ХУД.ГИМНАСТИКА",
                                                                                                                                                                                                            "place":"ЗАЛ ФТ"],[
                                                                                                                                                                                                                "types":"STEP FIT",
                                                                                                                                                                                                                "place":"ЗАЛ 2"],[
                                                                                                                                                                                                                    "types":"X-GRAVITY KIDS",
                                                                                                                                                                                                                    "place":"ЗАЛ ФТ"],[
                                                                                                                                                                                                                        "types":"BELLY DANCE",
                                                                                                                                                                                                                        "place":"ЗАЛ 1"],[
                                                                                                                                                                                                                            "types":"DANCE KIDS",
                                                                                                                                                                                                                            "place":"ДЕТ. ЗАЛ"],[
                                                                                                                                                                                                                                "types":"PILATES",
                                                                                                                                                                                                                                "place":"ДЕТ. ЗАЛ"],[
                                                                                                                                                                                                                                    "types":"MMA",
                                                                                                                                                                                                                                    "place":"РИНГ"],[
                                                                                                                                                                                                                                        "types":"TRX FUNCLUB",
                                                                                                                                                                                                                                        "place":"ЗАЛ ФТ"]
                
            ]

            
            self._schedule = schedule
            
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = 8
            
            if let content = schedule.content where content != "" {
                
                let attrString = NSMutableAttributedString(string: content)
                attrString.addAttribute(NSParagraphStyleAttributeName, value:paragraphStyle, range:NSMakeRange(0, attrString.length))
                self.contentLbl.attributedText = attrString
                
            } else {
                self.contentLbl.text = nil
            }
            
            if let time = schedule.time where time != "" {
                self.timeLbl.text = time.uppercaseString
            } else {
                self.timeLbl.text = nil
            }
            
            if let duration = schedule.duration where duration != "" {
                self.durationLbl.text = duration.uppercaseString
            } else {
                self.durationLbl.text = nil
            }
            
            
            let randomIndex = Int(arc4random_uniform(UInt32(sportTypes.count)))
            
            
            self.titleLbl.text = "\(sportTypes[randomIndex]["types"]!)"
            self.placeLbl.text = "\(sportTypes[randomIndex]["place"]!)"
            
        }
        
}
