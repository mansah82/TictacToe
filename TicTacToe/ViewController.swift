//
//  ViewController.swift
//  TicTacToe
//
//  Created by Manne Sahlin on 2021-11-23.
//

import UIKit

class ViewController: UIViewController {

let circleImage = "circleImage"
let xImage = "xImage"
var wichPlayer = true


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tap(_ sender: UITapGestureRecognizer) {
    
    if let imageView = sender.view as? UIImageView{
        if wichPlayer == true {
            imageView.image = UIImage(named: circleImage)
            
        } else {
            imageView.image = UIImage(named: xImage)
        }
        wichPlayer.toggle()
        }
    }


}

    
    
    

    


