//
//  ServicesVC.swift
//  lfitness
//
//  Created by Dev1 on 3/10/16.
//  Copyright © 2016 fxofficeapp. All rights reserved.
//

import UIKit

class ServicesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
        
        
        @IBOutlet weak var tableView: UITableView!
        
        override func viewWillAppear(animated: Bool) {
            self.navigationController?.navigationBarHidden = true
            self.evo_drawerController?.openDrawerGestureModeMask = .All
        }
        
        var services = [Services]()
        var preventAnimation = Set<NSIndexPath>()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            tableView.dataSource = self
            tableView.delegate = self
            
//            tableView.estimatedRowHeight = tableView.rowHeight
//            tableView.rowHeight = UITableViewAutomaticDimension
            
            self.parseData()
        }
        
        func parseData() {
            
            
            let objects = [[
                    "title":"Тренажерный зал",
                    "icon":"icon-water",
                    "thumb":"service_thumb_1",
                    "featuredImg":"service_thumb_1,service_thumb_2,service_thumb_3",
                "content":"Тренажерный зал в L-Fitness оснащен современным оборудованием бизнес класса, насчитывающим более 50 позиций. Кардиооборудование итальянских и американских производителей, позволит провести качественную разминку и кардио-сессию. Огромная зона свободных весов, наличие большого количества стоек и грифов, исключает образование очередей в ожидании свободного снаряда. В тренажерном зале Вы найдете все для качественного тренинга."
                
                ],[
                    "title":"CrossFit",
                    "icon":"icon-gym",
                    "thumb":"service_thumb_2",
                    "featuredImg":"service_thumb_2,service_thumb_1,service_thumb_3",
                    "content":"CrossFit – это система физической подготовки, которая берет свое начало из Соеденных Штатов Америки. CrossFit – позиционируется создателями и активными пользователями, как вид функционального тренинга для всех, обычные люди тренируются вместе с спортсменами, люди разного возраста могут попасть в одну группу, главной целью является всестороннее развитие организма, планомерное улучшение физических качеств. Их 10: работа сердечно сосудистой системы, выносливость, сила, гибкость, мощность, скорость, координация, ловкость, баланс, точность. Именно работа в таком широком диапазоне, позволяет стать подготовленным. Устойчивым к стрессам и болезням, сохранить ЗДОРОВЬЕ, и повысить КАЧЕСТВО СВОЕЙ ЖИЗНИ."
                    
                ],[
                    "title":"Реабилитация",
                    "icon":"icon-restl",
                    "thumb":"service_thumb_3",
                    "featuredImg":"service_thumb_3,service_thumb_2,service_thumb_4",
                    "content":"В процессе жизнедеятельности, под воздействием внешних факторов, опорно двигательный аппарат человека не выдерживает темпа заданного реалиями современной жизни и дает сбой. Для L- Fitness может предложить выход из ситуации. Опытные тренера реабилитоги помогут избавиться от болевых синдромов, а также научат, что не мало важно, использовать свои мышцы, для изменения механики движений, повлекшим за собой нарушение в работе опорно двигательного аппарата. Системное восстаровление после травм, аварий, и операционных вмешательств, могут быть решены с помощью западных методик, которыми владеют наши тренера."
                    
                ],[
                    "title":"Гимнастика",
                    "icon":"icon-cycle",
                    "thumb":"service_thumb_4",
                    "featuredImg":"service_thumb_4,service_thumb_2,service_thumb_3",
                    "content":"ибкость, ловкость, балланс, сила, умение владеть своим телом, все эти качества успешно развивает гимнастика. Занятия этим видом двигательной активности по праву популярны не только у детей, а и у взрослых. Гимнастика закладывает хороший фундамент, дает отличный старт для занятий другии видами спорта, учит базовым движениям применимым в жизни и других видах двигательной активности."
                    
                ],[
                    "title":"Тяжелая атлетика",
                    "icon":"icon-child",
                    "thumb":"service_thumb_5",
                    "featuredImg":"service_thumb_5,service_thumb_2,service_thumb_3",
                    "content":"Олимпийский вид спорта, развивает силу, скорость, координацию, ловкость, гибкость, балланс. Научит вас и вашего ребенка контролировать внешние объекты. Тренировочный процесс разнообразен и интересен. Формат занятий персональный и групповой."
                    
                ],[
                    "title":"Дзю-до",
                    "icon":"icon-cafe",
                    "thumb":"service_thumb_6",
                    "featuredImg":"service_thumb_6,service_thumb_2,service_thumb_3",
                    "content":"Дзюдо – это универсальный метод физического развития и воспитания личности. Это сплав древнего боевого искусства, современных спортивных приемов и философии постоянного самосовершенствования. Это искусство, дающее свободу самовыражения и демонстрирующее красоту движений. Принципы дзюдо применимы не только к физическому развитию, но и ко многим другим аспектам жизни."
                    
                ],[
                    "title":"Бокс",
                    "icon":"icon-person",
                    "thumb":"service_thumb_7",
                    "featuredImg":"service_thumb_7,service_thumb_2,service_thumb_3",
                    "content":"Бокс — один из самых популярных видов боевых искусств. Занятия боксом вырабатывают способность быстро принимать решения, тренируют скорость, реакцию и выносливость. Бокс в L-fitness — без ограничений по возрасту и уровню физической подготовленности. Профессионал своего дела чемпион Украины по боксу Сиренький Павел проявит свои лучшие качества в преподавании бойцовского искусства и отнесется к Вам с заботой и вниманием!"
                    
                ]]
            
            for object in objects {
                
                let service = Services(dictionary: object)
                
                self.services.append(service)
                
            }
            
            
            self.tableView.reloadData()
        }

        
        func numberOfSectionsInTableView(tableView: UITableView) -> Int {
            return 1
        }
        
        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return services.count
        }
        
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            
            let services = self.services[indexPath.row]
            
            if let cell = tableView.dequeueReusableCellWithIdentifier("ServicesCell") as? ServicesCell {
                
                cell.configureCell(services)
                
                return cell
                
            } else {
                return ServicesCell()
            }
            
        }
        
        func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
            if !preventAnimation.contains(indexPath) {
                preventAnimation.insert(indexPath)
                cell.alpha = 0
                UIView.animateWithDuration(1.0, animations: { () -> Void in
                    cell.alpha = 1
                })
            }
        }
    
        func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
            return 84
        }
    
        func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
            return 84
        }

        func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
            
            let news = self.services[indexPath.row]
            performSegueWithIdentifier("ServicesDetailVC", sender: news)
            
        }
        
        override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            if segue.identifier == "ServicesDetailVC" {
                if let servicesDetailVC = segue.destinationViewController as? ServicesDetailVC {
                    if let services = sender as? Services {
                        servicesDetailVC.services = services
                    }
                }
            }
        }
        
        @IBAction func openMenu(sender: AnyObject) {
            self.evo_drawerController?.toggleDrawerSide(.Left, animated: true, completion: nil)
            
        }
        
        @IBAction func openProfile(sender: AnyObject) {
            let controller = self.storyboard?.instantiateViewControllerWithIdentifier("ProfileVC") as! ProfileVC
            self.navigationController?.pushViewController(controller, animated: true)
        }
        
        
}


