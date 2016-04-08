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
                    "title":"БАССЕЙН 25 М С МОРСКОЙ ВОДОЙ",
                    "icon":"icon-water",
                    "thumb":"service_thumb_1",
                    "featuredImg":"service_img_1,foto2,foto3",
                    "content":"Фитнес-клуб X-Fit Монарх не просто с бассейном – а с бассейном с морской водой. Подобный солевой состав воды оказывает целебное воздействие на ваш организм и позволяет даже зимой в Москве вспомнить об отпуске на море. Впрочем, это не единственное преимущество занятий в бассейне X-Fit Монарх. Так, благодаря длине в 25 м и трем дорожкам здесь возможно одновременно заниматься плаванием и проводить тренировки по индивидуальной программе (реабилитация, подготовка к соревнованиям и т.д.)."
                
                ],[
                    "title":"ТРЕНАЖЕРНЫЙ ЗАЛ",
                    "icon":"icon-gym",
                    "thumb":"service_thumb_2",
                    "featuredImg":"foto4,foto5,foto6",
                    "content":"Фитнес-клуб X-Fit Монарх не просто с бассейном – а с бассейном с морской водой. Подобный солевой состав воды оказывает целебное воздействие на ваш организм и позволяет даже зимой в Москве вспомнить об отпуске на море. Впрочем, это не единственное преимущество занятий в бассейне X-Fit Монарх. Так, благодаря длине в 25 м и трем дорожкам здесь возможно одновременно заниматься плаванием и проводить тренировки по индивидуальной программе (реабилитация, подготовка к соревнованиям и т.д.)."
                    
                ],[
                    "title":"ДВА ЗАЛА ГРУППОВЫХ ЗАНЯТИЙ",
                    "icon":"icon-restl",
                    "thumb":"service_thumb_3",
                    "featuredImg":"foto7,foto2,foto3",
                    "content":"Фитнес-клуб X-Fit Монарх не просто с бассейном – а с бассейном с морской водой. Подобный солевой состав воды оказывает целебное воздействие на ваш организм и позволяет даже зимой в Москве вспомнить об отпуске на море. Впрочем, это не единственное преимущество занятий в бассейне X-Fit Монарх. Так, благодаря длине в 25 м и трем дорожкам здесь возможно одновременно заниматься плаванием и проводить тренировки по индивидуальной программе (реабилитация, подготовка к соревнованиям и т.д.)."
                    
                ],[
                    "title":"САЙКЛ-СТУДИЯ",
                    "icon":"icon-cycle",
                    "thumb":"service_thumb_4",
                    "featuredImg":"foto1,foto2,foto3",
                    "content":"Фитнес-клуб X-Fit Монарх не просто с бассейном – а с бассейном с морской водой. Подобный солевой состав воды оказывает целебное воздействие на ваш организм и позволяет даже зимой в Москве вспомнить об отпуске на море. Впрочем, это не единственное преимущество занятий в бассейне X-Fit Монарх. Так, благодаря длине в 25 м и трем дорожкам здесь возможно одновременно заниматься плаванием и проводить тренировки по индивидуальной программе (реабилитация, подготовка к соревнованиям и т.д.)."
                    
                ],[
                    "title":"ДЕТСКИЙ ФИТНЕС",
                    "icon":"icon-child",
                    "thumb":"service_thumb_5",
                    "featuredImg":"foto4,foto5,foto6",
                    "content":"Фитнес-клуб X-Fit Монарх не просто с бассейном – а с бассейном с морской водой. Подобный солевой состав воды оказывает целебное воздействие на ваш организм и позволяет даже зимой в Москве вспомнить об отпуске на море. Впрочем, это не единственное преимущество занятий в бассейне X-Fit Монарх. Так, благодаря длине в 25 м и трем дорожкам здесь возможно одновременно заниматься плаванием и проводить тренировки по индивидуальной программе (реабилитация, подготовка к соревнованиям и т.д.)."
                    
                ],[
                    "title":"ФИТНЕС КАФЕ FRESH FIT",
                    "icon":"icon-cafe",
                    "thumb":"service_thumb_6",
                    "featuredImg":"service_img_1",
                    "content":"Фитнес-клуб X-Fit Монарх не просто с бассейном – а с бассейном с морской водой. Подобный солевой состав воды оказывает целебное воздействие на ваш организм и позволяет даже зимой в Москве вспомнить об отпуске на море. Впрочем, это не единственное преимущество занятий в бассейне X-Fit Монарх. Так, благодаря длине в 25 м и трем дорожкам здесь возможно одновременно заниматься плаванием и проводить тренировки по индивидуальной программе (реабилитация, подготовка к соревнованиям и т.д.)."
                    
                ],[
                    "title":"ПЕРСОНАЛЬНЫЕ ТРЕНИРОВКИ",
                    "icon":"icon-person",
                    "thumb":"service_thumb_7",
                    "featuredImg":"service_img_1",
                    "content":"Фитнес-клуб X-Fit Монарх не просто с бассейном – а с бассейном с морской водой. Подобный солевой состав воды оказывает целебное воздействие на ваш организм и позволяет даже зимой в Москве вспомнить об отпуске на море. Впрочем, это не единственное преимущество занятий в бассейне X-Fit Монарх. Так, благодаря длине в 25 м и трем дорожкам здесь возможно одновременно заниматься плаванием и проводить тренировки по индивидуальной программе (реабилитация, подготовка к соревнованиям и т.д.)."
                    
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


