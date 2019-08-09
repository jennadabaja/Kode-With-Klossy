//
//  ViewController.swift
//  Emojional
//
//  Created by Apple on 8/8/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let emojis = ["🏝" : "palm tree" , "🌃" : "downtown" , "🏔" : "nature" , "🎢" : "Amusement Parks" , "❄️" : "cold", "🌎" : "random"]
    let customMessages =
        ["palm tree" : ["Bahamas", "Fiji", "Bora Bora", "Hawaii", "Mexico", "Bali", "Punta Cana"],
         "downtown" :  ["Chicago", "New York", "Paris", "Detroit", "Toronto", "Las Vegas", "Seattle"],
         "nature" : ["Colorado", "Washington", "Montana","Arizona", "Alaska", "Tennessee", "Wyoming"], "Amusement Parks" : ["Cedar Point", "Six Flags", "Disneyland", "Canada's Wonderland", "Hersheypark", "Universal Studios", "Magic Kingdom"],
         "cold" : ["Iceland", "Alaska", "Prague", "Berlin", "Toronto", "Norway", "Amsterdam"],
         "random" : ["Spain", "Los Angeles", "Dubai", "Austria", "Brazil", "Argentina", "Japan"]]
    
    @IBAction func sendMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel!.text
        let random = Int.random(in: 0 ..< 7)
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[random]
        let alertController = UIAlertController(title: selectedEmotion , message: emojiMessage ,  preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }

  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


