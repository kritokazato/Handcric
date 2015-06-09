//
//  playViewController.swift
//  Hand Cricket Attack
//
//  Created by KARTHIK on 5/26/15.
//  Copyright (c) 2015 sam. All rights reserved.
//

import UIKit

class playViewController: UIViewController {
    
    @IBOutlet weak var input: UITextField!
    
    
    @IBOutlet var output: UIView!
    
    @IBOutlet weak var currscorelabel: UILabel!
    
    
    
    @IBOutlet weak var currscoreoutput: UITextView!
    
    
    @IBOutlet weak var chase: UITextField!
    @IBOutlet weak var settarget: UILabel!
    
    
    var target : UInt32 = 0
    
    var bowl : UInt32 = 0
    var gameOver = true
    
    
    var score : Int = 0
    func consoleOut(text : String) {
        
        currscoreoutput.text = currscoreoutput.text + text
        
    }
    
    
    func generatebowling() ->UInt32 {
        return arc4random_uniform(7)
    }
    
    func clearInput() {
        input.text = ""
    }
    
    func setter()
    {
        var set : Int? = chase.text.toInt()
        
        

    }
    
    
        @IBAction func BeginChase(sender: AnyObject) {
           
            
            

                       if gameOver {
                var newGame = input.text
                        
                if newGame == "Y" {
                    
                    gameOver = false
                    
                   clearInput()
                   consoleOut("\n Enter the number to play\n")
                    setter()
                     clearInput()
                    score = 0
                    
                    return
                }
                       
            }
            
            var possibleGuess : Int? = input.text.toInt()
            var set : Int? = chase.text.toInt()
            

            
            if let guess = possibleGuess {
                if guess < 7
                {
                   target = generatebowling()
                    if UInt32(guess) != target {
                    var batt = String(guess)
                    currscoreoutput.text = ""+batt
                        
                  
                   
                      
                    score = score + guess
                    consoleOut("\n The Current Score: \(score)\n")
                        
                        
                        
                        
                       
                        if (score >= set)
                        {
                            consoleOut("\nYou have Won the Match!!\n")
                            
                            
                            currscoreoutput.text = "\n you Have won the match!!! :) wanna play again? (Y)\n"
                           
                            gameOver = true
                           
                            
                        }
                         clearInput()
                        
                   }
                  
                  
                     else {
                        
                    consoleOut("\n\(guess): You Lose the match!\n")
                    currscoreoutput.text = "\n You Lose the match!! :( wanna play again? (Y)\n"
                        
                    
                    gameOver = true
                }
                clearInput()
                
                    
            } else {
                consoleOut("\nYou can't score more than six in a ball :P !\n")
                
            }
            }
    }

        
        

    

       override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
          }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated.
    }
    @IBAction func beginchase(sender: AnyObject) {
        
    }
    

    @IBAction func tomainviewpressed(sender: AnyObject) {
        self.navigationController?.popToRootViewControllerAnimated(true)
        
    }
}
