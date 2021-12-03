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
var wichPlayer = Player(listOfSquares: [], name: "", score: 0)
var counter = 0
var player1 = Player(listOfSquares: [], name: "Player one", score: 0)
var player2 = Player(listOfSquares: [], name: "Player two", score: 0)
var hasWon = false
var buttonPressed = false
var listOfImages: [UIImageView] = []
var winningSequence = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

    @IBOutlet weak var scorePlayer2Label: UILabel!
    @IBOutlet weak var scorePlayer1Label: UILabel!
    @IBOutlet weak var playAgainOutlet: UIButton!
    @IBOutlet weak var playerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wichPlayer = player1
        playAgainOutlet.isHidden = true
        playAgainOutlet.isEnabled = false
        scorePlayer1Label.text = "Player 1: \(player1.score)"
        scorePlayer2Label.text = "Player 2: \(player2.score)"
        
    }

    @IBAction func tap(_ sender: UITapGestureRecognizer) {
    
        if let imageView = sender.view as? UIImageView{
            if wichPlayer.name == "Player one" && hasWon == false && imageView.image == nil{
            imageView.image = UIImage(named: circleImage)
            player1.listOfSquares?.append(imageView.tag)
            listOfImages.append(imageView)
            counter += 1
            playerLabel.text = "Player 2 turn"
            checkWinner()
            wichPlayer = player2
            
        } else if wichPlayer.name == "Player two" && hasWon == false && imageView.image == nil{
            imageView.image = UIImage(named: xImage)
            listOfImages.append(imageView)
            player2.listOfSquares?.append(imageView.tag)
            counter += 1
            playerLabel.text = "Player 1 turn"
            checkWinner()
            wichPlayer = player1
        }
            
        }
    }

    func checkWinner(){
    
        if let winner = wichPlayer.listOfSquares{
        for numbers in winningSequence{
            
            if  winner.contains(numbers[0]) && winner.contains(numbers[1]) && winner.contains(numbers[2]) {
                playerLabel.text = "\(wichPlayer.name) won"
                wichPlayer.score += 1
                hasWon = true
                playAgainOutlet.isEnabled = true
                playAgainOutlet.isHidden = false
                
               
                }
            }
        }
   
        if counter == 9 && hasWon == false{
        playerLabel.text = "Its a draw"
        playAgainOutlet.isEnabled = true
        playAgainOutlet.isHidden = false
        
    }
    
    }
    
  @IBAction func playAgainButton(_ sender: Any) {
       
      for images in listOfImages{
            images.image = nil
            }
        
        playAgainOutlet.isEnabled = false
        playAgainOutlet.isHidden = true
        counter = 0
        player1 = Player(listOfSquares: [], name: "Player one", score: player1.score)
        player2 = Player(listOfSquares: [], name: "Player two", score: player2.score)
        playerLabel.text = "Start player one"
        scorePlayer1Label.text = "Player 1: \(player1.score)"
        scorePlayer2Label.text = "Player 2: \(player2.score)"
        hasWon = false
        buttonPressed = false
        wichPlayer = player1
        
  }
}
    


    
    
    

    


