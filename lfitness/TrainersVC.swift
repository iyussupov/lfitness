//
//  TrainersVC.swift
//  lfitness
//
//  Created by Dev1 on 3/10/16.
//  Copyright © 2016 fxofficeapp. All rights reserved.
//

import UIKit

class TrainersVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collection: UICollectionView!
 
    override func viewWillAppear(animated: Bool) {
        self.navigationController?.navigationBarHidden = true
        self.evo_drawerController?.openDrawerGestureModeMask = .All
    }
    
    var trainers = [Trainers]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        parseData()
    }

    func parseData() {
        
        
        let objects = [[
                "featuredImage":"trainer1",
                "name":"ИЛЬЯ СУПРУНЕНКО",
                "category":"СПОРТИВНЫЕ ЕДИНОБОРСТВА",
                "content":"Координатор направления единоборств федеральной сети фитнес клубов «X-FIT», мастер-тренер."
            ],[
                "featuredImage":"trainer2",
                "name":"АЛЕНА ГРИБАНОВА",
                "category":"ПИЛАТЕС И СТРЕЙЧ",
                "content":"Координатор направления единоборств федеральной сети фитнес клубов «X-FIT», мастер-тренер."
            ],[
                "featuredImage":"trainer3",
                "name":"МАКСИМ КУРБАТОВ",
                "category":"STEP",
                "content":"Координатор направления единоборств федеральной сети фитнес клубов «X-FIT», мастер-тренер."
            ],[
                "featuredImage":"trainer4",
                "name":"АЛЕКСАНДР МИРОНЕНКО",
                "category":"ФУНКЦИОНАЛЬНЫЙ ТРЕНИНГ",
                "content":"Координатор направления единоборств федеральной сети фитнес клубов «X-FIT», мастер-тренер."
            ],[
                "featuredImage":"trainer5",
                "name":"АНТОН ШАПОЧКА",
                "category":"TRX",
                "content":"Координатор направления единоборств федеральной сети фитнес клубов «X-FIT», мастер-тренер."
            ],[
                "featuredImage":"trainer6",
                "name":"РУСЛАН ПАНОВ",
                "category":"CYCLE",
                "content":"Координатор направления единоборств федеральной сети фитнес клубов «X-FIT», мастер-тренер."
            ]]
        
        for object in objects {
            
            let trainer = Trainers(dictionary: object)
            
            self.trainers.append(trainer)
            
        }
        
        
        self.collection.reloadData()
    }

    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCellWithReuseIdentifier("TrainersCell", forIndexPath: indexPath) as? TrainersCell {
            
            let trainer: Trainers!
            trainer = trainers[indexPath.row]
            
            cell.configureCell(trainer)
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {

        let trainer = self.trainers[indexPath.row]
        performSegueWithIdentifier("TrainerDetailVC", sender: trainer)
        
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return trainers.count
        
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        return CGSizeMake(164, 200)
    }
    
    
    @IBAction func openMenu(sender: AnyObject) {
        self.evo_drawerController?.toggleDrawerSide(.Left, animated: true, completion: nil)
    }
    
    @IBAction func openProfile(sender: AnyObject) {
        let controller = self.storyboard?.instantiateViewControllerWithIdentifier("ProfileVC") as! ProfileVC
        self.navigationController?.pushViewController(controller, animated: true)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "TrainerDetailVC" {
            if let trainerDetailVC = segue.destinationViewController as? TrainerDetailVC {
                if let trainer = sender as? Trainers {
                    trainerDetailVC.trainer = trainer
                }
            }
        }
    }
    
    
}
