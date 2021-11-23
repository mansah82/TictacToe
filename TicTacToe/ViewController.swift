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
var counter = 0

    @IBOutlet weak var playerLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tap(_ sender: UITapGestureRecognizer) {
    
    if let imageView = sender.view as? UIImageView{
        if wichPlayer == true && imageView.tag == 0 {
            imageView.image = UIImage(named: circleImage)
            imageView.tag = 1
            wichPlayer.toggle()
            counter += 1
            playerLabel.text = "Player 2 turn"
            
        } else if wichPlayer == false && imageView.tag == 0{
            imageView.image = UIImage(named: xImage)
            imageView.tag = 2
            wichPlayer.toggle()
            counter += 1
            playerLabel.text = "Player 1 turn"
        }
        if counter == 9{
            playerLabel.text = "Your out of moves"
        }
        }
    }


}

    
    
    

    


