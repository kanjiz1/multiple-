//
//  ViewController.swift
//  multiples-
//
//  Created by Oforkanji Odekpe on 6/25/16.
//  Copyright © 2016 Oforkanji Odekpe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var logo: UIImageView!;
    @IBOutlet weak var howManyMultiplesText: UITextField!;
    @IBOutlet weak var playButton: UIButton!;
    
    @IBOutlet weak var addButton: UIButton!;
    @IBOutlet weak var multiplesAddedText: UILabel!;
    var start:Int = 0;
    let end:Int = 12;
    var temp:Int = 0;
    var result:Int = 0;
    var count:Int = 0;
    
    @IBAction func playButtonPressed(sender: UIButton!){
        
        if howManyMultiplesText.text != "" && howManyMultiplesText.text != nil
        {
            logo.hidden = true;
            howManyMultiplesText.hidden = true;
            playButton.hidden = true;
            
            addButton.hidden = false;
            multiplesAddedText.hidden = false;
            
            temp = Int(howManyMultiplesText.text!)!;
        }
    }
    
    @IBAction func addButtonPressed(sender: UIButton!)
    {
        result = start + temp;
        labelUpdated();
        start = result;
        count++;
        if count == end + 1{
            restartGame();
        }
    }
 
    func labelUpdated()
    {
        multiplesAddedText.text = "\(start) + \(temp) = \(result)";
    }
    
    func restartGame()
    {
        logo.hidden = false;
        howManyMultiplesText.hidden = false;
        playButton.hidden = false;
        
        addButton.hidden = true;
        multiplesAddedText.hidden = true;
        
        start = 0; temp = 0; result = 0; count = 0;
        multiplesAddedText.text = "Click Add to Add!"
    
    }
}