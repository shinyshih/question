//
//  qaViewController.swift
//  question
//
//  Created by 施馨檸 on 2017/9/1.
//  Copyright © 2017年 施馨檸. All rights reserved.
//

import UIKit
import GameplayKit

class qaViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    var count = 0
    
    @IBAction func showAnswerButton(_ sender: Any) {
        answerLabel.isHidden = false
    }
    
    @IBAction func nextButton(_ sender: Any) {
        if count == 10 {
            count = 0
        }
        next()
    }
    
    func next() {
        let random = GKRandomDistribution(lowestValue: 0, highestValue: qnaArray.count-1)
        let randomQuestion = qnaArray[random.nextInt()]
        questionLabel.text = randomQuestion.question
        answerLabel.text = randomQuestion.answer
        count += 1
        countLabel.text = "\(count)"
        answerLabel.isHidden = true
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        next()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
