//
//  TrackYourselfViewController.swift
//  DominoCounter
//
//  Created by Vincent Scavetta on 7/4/17.
//  Copyright © 2017 Vincent Scavetta. All rights reserved.
//

import UIKit

class TrackYourselfViewController: UIViewController{
    
    @IBOutlet weak var totalCount: UILabel!
    
    var dominoCount: Int = 0
    
    var additionStack: Stack<Int> = Stack<Int>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func AddButton(_ sender: UIButton) {
        let buttonValue = sender.tag
        dominoCount += buttonValue
        totalCount.text = String(dominoCount)
        
        additionStack.push(buttonValue)
    }
    
    @IBAction func UndoButtonPress(_ sender: Any) {
        let poppedInt = additionStack.pop()
        
        if(poppedInt != nil){
            let temp:Int = Int(poppedInt!)
            dominoCount = dominoCount - temp
            totalCount.text = String(dominoCount)
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
