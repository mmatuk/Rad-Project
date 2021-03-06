//
//  Email.swift
//  RadApp
//
//  Created by csit267-8 on 12/16/15.
//  Copyright © 2015 Koby Samuel. All rights reserved.
//

import UIKit

class Email
{
 //
    var quizes: [Quiz]!
    
    init (quizes: [Quiz])
    {
        self.quizes=quizes
    }
    
    func sendEmail(title: String, score: Int) -> String
    {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        var fileString: String = "\(title) Quiz Results\n\(appDelegate.firstName) \(appDelegate.lastName)\n\(appDelegate.studentID)\n\n"
        for var count = 0; count < quizes.count; count++
        {
            fileString += "#\(count+1) \(quizes[count].question)\n\tYour Answer: \(quizes[count].userAnswer)\n\tCorrect Answer: \(quizes[count].correctStr)\n\n"
        }
        
        fileString += "Total Score: \(score)/\(quizes.count)"
     
        return fileString
    }
}
