//
//  MainVC.swift
//  Tic Tac Toe
//
//  Created by Ryan Kistner on 1/11/18.
//  Copyright © 2018 Ryan Kistner. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    //Player1 = false, Player2 = true
    var player = false
    
    //Results Label
    @IBOutlet weak var resultsLabel: UILabel!
    
    //Button Variables for changing Box Color & Identify winner
    @IBOutlet weak var topLeftButton: UIButton!
    @IBOutlet weak var topMiddleButton: UIButton!
    @IBOutlet weak var topRightButton: UIButton!
    @IBOutlet weak var middleLeftButton: UIButton!
    @IBOutlet weak var middleMiddleButton: UIButton!
    @IBOutlet weak var middleRightButton: UIButton!
    @IBOutlet weak var bottomLeftButton: UIButton!
    @IBOutlet weak var bottomMiddleButton: UIButton!
    @IBOutlet weak var bottomRightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultsLabel.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Top Row
    @IBAction func topLeftButtonPressed(_ sender: UIButton) {
        if(player == false){
            topLeftButton.backgroundColor = .red
            player = true
        } else {
            topLeftButton.backgroundColor = .green
            player = false
        }
        topLeftButton.isUserInteractionEnabled = false
        self.checkButtonColorsForWinner()
    }
    @IBAction func topMiddleButtonPressed(_ sender: UIButton) {
        if(player == false){
            topMiddleButton.backgroundColor = .red
            player = true
        } else {
            topMiddleButton.backgroundColor = .green
            player = false
        }
        topMiddleButton.isUserInteractionEnabled = false
        self.checkButtonColorsForWinner()
    }
    @IBAction func topRightButtonPressed(_ sender: UIButton) {
        if(player == false){
            topRightButton.backgroundColor = .red
            player = true
        } else {
            topRightButton.backgroundColor = .green
            player = false
        }
        topRightButton.isUserInteractionEnabled = false
        self.checkButtonColorsForWinner()
    }
    //Middle Row
    @IBAction func middleLeftButtonPressed(_ sender: UIButton) {
        if(player == false){
            middleLeftButton.backgroundColor = .red
            player = true
        } else {
            middleLeftButton.backgroundColor = .green
            player = false
        }
        middleLeftButton.isUserInteractionEnabled = false
        self.checkButtonColorsForWinner()
    }
    @IBAction func middleMiddleButtonPressed(_ sender: UIButton) {
        if(player == false){
            middleMiddleButton.backgroundColor = .red
            player = true
        } else {
            middleMiddleButton.backgroundColor = .green
            player = false
        }
        middleMiddleButton.isUserInteractionEnabled = false
        self.checkButtonColorsForWinner()
    }
    @IBAction func middleRightButtonPressed(_ sender: UIButton) {
        if(player == false){
            middleRightButton.backgroundColor = .red
            player = true
        } else {
            middleRightButton.backgroundColor = .green
            player = false
        }
        middleRightButton.isUserInteractionEnabled = false
        self.checkButtonColorsForWinner()
    }
    //Bottom Row
    @IBAction func bottomLeftButtonPressed(_ sender: UIButton) {
        if(player == false){
            bottomLeftButton.backgroundColor = .red
            player = true
        } else {
            bottomLeftButton.backgroundColor = .green
            player = false
        }
        bottomLeftButton.isUserInteractionEnabled = false
        self.checkButtonColorsForWinner()
    }
    @IBAction func bottomMiddleButtonPressed(_ sender: UIButton) {
        if(player == false){
            bottomMiddleButton.backgroundColor = .red
            player = true
        } else {
            bottomMiddleButton.backgroundColor = .green
            player = false
        }
        bottomMiddleButton.isUserInteractionEnabled = false
        self.checkButtonColorsForWinner()
    }
    @IBAction func bottomRightButtonPressed(_ sender: UIButton) {
        if(player == false){
            bottomRightButton.backgroundColor = .red
            player = true
        } else {
            bottomRightButton.backgroundColor = .green
            player = false
        }
        bottomRightButton.isUserInteractionEnabled = false
        self.checkButtonColorsForWinner()
    }
    
    
    //Reset Button
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        //Setting Buttons back to Orginal Color Scheme
        //Dark Gray
        topLeftButton.backgroundColor = .darkGray
        topRightButton.backgroundColor = .darkGray
        middleMiddleButton.backgroundColor = .darkGray
        bottomLeftButton.backgroundColor = .darkGray
        bottomRightButton.backgroundColor = .darkGray
        
        //Light Grey
        topMiddleButton.backgroundColor = .lightGray
        middleLeftButton.backgroundColor = .lightGray
        middleRightButton.backgroundColor = .lightGray
        bottomMiddleButton.backgroundColor = .lightGray
        
        resultsLabel.isHidden = true
        
        //Reenable Buttons
        topLeftButton.isUserInteractionEnabled = true
        topMiddleButton.isUserInteractionEnabled = true
        topRightButton.isUserInteractionEnabled = true
        middleLeftButton.isUserInteractionEnabled = true
        middleMiddleButton.isUserInteractionEnabled = true
        middleRightButton.isUserInteractionEnabled = true
        bottomLeftButton.isUserInteractionEnabled = true
        bottomMiddleButton.isUserInteractionEnabled = true
        bottomRightButton.isUserInteractionEnabled = true
    }
    
    
    //Check who won
    func checkButtonColorsForWinner(){
        //Top Row
        if(topLeftButton.backgroundColor == .red && topMiddleButton.backgroundColor == .red && topRightButton.backgroundColor == .red){
            self.redWonGame()
        }else if(topLeftButton.backgroundColor == .green && topMiddleButton.backgroundColor == .green && topRightButton.backgroundColor == .green){
            self.greenWonGame()
        //Middle Row
        }else if(middleLeftButton.backgroundColor == .red && middleMiddleButton.backgroundColor == .red && middleRightButton.backgroundColor == .red){
            self.redWonGame()
        }else if(middleLeftButton.backgroundColor == .green && middleMiddleButton.backgroundColor == .green && middleRightButton.backgroundColor == .green){
            self.greenWonGame()
        //Bottom Row
        }else if(bottomLeftButton.backgroundColor == .red && bottomMiddleButton.backgroundColor == .red && bottomRightButton.backgroundColor == .red) {
            self.redWonGame()
        }else if(bottomLeftButton.backgroundColor == .green && bottomMiddleButton.backgroundColor == .green && bottomRightButton.backgroundColor == .green){
            self.greenWonGame()
        //Cross from Top Right to Bottom Left
        }else if(topRightButton.backgroundColor == .red && middleMiddleButton.backgroundColor == .red && bottomLeftButton.backgroundColor == .red){
            self.redWonGame()
        }else if(topRightButton.backgroundColor == .green && middleMiddleButton.backgroundColor == .green && bottomLeftButton.backgroundColor == .green){
            self.greenWonGame()
        //Cross from Top Left to Bottom Right
        }else if(topLeftButton.backgroundColor == .red && middleMiddleButton.backgroundColor == .red && bottomRightButton.backgroundColor == .red){
            self.redWonGame()
        }else if(topLeftButton.backgroundColor == .green && middleMiddleButton.backgroundColor == .green && bottomRightButton.backgroundColor == .green){
            self.greenWonGame()
        //Middle Top to Bottom / Bottom to Top
        }else if(topMiddleButton.backgroundColor == .red && middleMiddleButton.backgroundColor == .red && bottomMiddleButton.backgroundColor == .red){
            self.redWonGame()
        }else if(topMiddleButton.backgroundColor == .green && middleMiddleButton.backgroundColor == .green && bottomMiddleButton.backgroundColor == .green){
            self.greenWonGame()
        //Left Top to Bottom / Bottom to Top
        }else if(topLeftButton.backgroundColor == .red && middleLeftButton.backgroundColor == .red && bottomLeftButton.backgroundColor == .red){
            self.redWonGame()
        }else if(topLeftButton.backgroundColor == .green && middleLeftButton.backgroundColor == .green && bottomLeftButton.backgroundColor == .green){
            self.greenWonGame()
        //Right Top to Bottom / Bottom to Top
        }else if(topRightButton.backgroundColor == .red && middleRightButton.backgroundColor == .red && bottomRightButton.backgroundColor == .red){
            self.redWonGame()
        }else if(topRightButton.backgroundColor == .green && middleRightButton.backgroundColor == .green && bottomRightButton.backgroundColor == .green){
            self.greenWonGame()
        }
    }
    
    
    //Func to display who one
    func greenWonGame(){
        resultsLabel.isHidden = false
        resultsLabel.text = "Green Won!"
    }
    
    func redWonGame(){
        resultsLabel.isHidden = false
        resultsLabel.text = "Red Won!"
    }
}

