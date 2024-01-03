//
//  ViewController.swift
//  counterApp
//
//  Created by t2023-m0028 on 1/3/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    var count:Int = 0
    
    @IBOutlet weak var increaseButton: UIButton!
    @IBOutlet weak var reduceButton: UIButton!

    
    @IBAction func touchedReduceButton(_ sender: Any) {
        self.count -= 1
        self.refreshCountLabel()
    }
    
    @IBAction func touchedIncreaseButton(_ sender: Any) {
        self.count += 1
        self.refreshCountLabel()
    }
    private func refreshCountLabel(){
        self.countLabel.text = String(self.count)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.refreshCountLabel()
        
    }
}
