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
        sortAnswers()
    }
}

extension ResultsViewController {
    private func sortAnswers() {
        let mappedAnswers = answers.map { ($0, 1) }
        let counts = Dictionary(mappedAnswers, uniquingKeysWith: +)
        let sortedOne = counts.sorted{ (first, last) -> Bool in
            return first.value >= last.value
        }
        whoAreYouLabel.text = sortedOne.first?.key.type.rawValue.lowercased()
        whoAreYouDescriptionLabel.text = sortedOne.first?.key.type.definition
    }
}
