//
//  ViewController.swift
//  feelingsapp
//
//  Created by Scholar on 6/23/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var message: UILabel!
    
    var happyArray = ["I love that for you!", "Go girl", "Yaas Queen", "Slayy" ]
    var sadArray = ["You are loved", "Treat yourself", "Get over it", "Life Happens" ]
    var angryArray = ["Take a few breaths", "Take a walk", "Calm Down", "Meditate"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func happyButton(_ sender: UIButton) {
        let randomNumber = Int.random (in: 0..<happyArray.count )
        message.text = happyArray[randomNumber]
        imageView.image = UIImage(named: "happyimg")
    }
    
    @IBAction func angryButton(_ sender: UIButton) {
        let angryRandom = Int.random (in: 0..<angryArray.count)
        message.text = angryArray[angryRandom]
        imageView.image = UIImage(named: "angryimg")
        
    }
    
    
    @IBAction func sadButton(_ sender: UIButton) {
        let sadRandom = Int.random (in: 0..<sadArray.count)
        message.text = sadArray[sadRandom]
        imageView.image = UIImage(named: "sadimg")
    }
}

