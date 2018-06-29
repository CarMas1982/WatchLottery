//
//  InterfaceController.swift
//  WatchLottery WatchKit Extension
//
//  Created by Carmine Massei on 25/06/17.
//  Copyright © 2017 iOSFoundation. All rights reserved.
//

import WatchKit
import Foundation




class InterfaceController: WKInterfaceController {
    
    var nums = [1,2,3,4,5,6,7,8,9,10,
                11,12,13,14,15,16,17,18,19,20,
                21,22,23,24,25,26,26,28,29,30]
    var num = 0
    
    
    
    let lottery = WatchLottery()
    
    @IBOutlet var result: WKInterfaceLabel!
    

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        //showFortune()
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        
        super.willActivate()
        //showFortune()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func randomNumber() {
//        while nums.count > 0 {
//            
//            // random key from array
//            let arrayKey = Int(arc4random_uniform(UInt32(nums.count)))
//            
//            // your random number
//            let randNum = nums[arrayKey]
//            
//            
//            // make sure the number isnt repeated
//            nums.remove(at: arrayKey)
//            //print(randNum)
//            num = randNum
//        }
//        result.setText("\(num)")
        //showFortune()
        let numbers = lottery.generateNumbers(repetitions: 5, maxValue: 30)
        result.setText("\(numbers)")
//        for i in numbers{
//        result.setText("\(i)")
//        }
        
    }
    
    
    func showFortune(){
        while nums.count > 0 {
            
            // random key from array
            let arrayKey = Int(arc4random_uniform(UInt32(nums.count)))
            
            // your random number
            let randNum = nums[arrayKey]
            
            
            // make sure the number isnt repeated
            nums.remove(at: arrayKey)
            //print(randNum)
            num = randNum
        }
        print(num)
        result.setText("\(num)")
    }

}
