//
//  ResultsViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 08.02.2021.
//

import UIKit

class ResultsViewController: UIViewController {
    

    @IBOutlet weak var whoAreYouLabel: UILabel!
    @IBOutlet weak var whoAreYouDescriptionLabel: UILabel!
    
    var answers: [Answer] = []
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.setHidesBackButton(true, animated: false)
        whoAreYouLabel.text = answers.first?.type.rawValue.lowercased()
        whoAreYouDescriptionLabel.text = answers.first?.type.definition
    }

}
