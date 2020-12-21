//
//  PsychologicalTestViewController.swift
//  Demo
//
//  Created by SHIH-YING PAN on 2020/12/21.
//

import UIKit

class PsychologicalTestViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBSegueAction func showSelectAnimal(_ coder: NSCoder) -> SelectAnimalViewController? {
        let selectAnimalViewController = SelectAnimalViewController(coder: coder)
        selectAnimalViewController?.delegate = self
        return selectAnimalViewController
        
    }
   
}

extension PsychologicalTestViewController: SelectAnimalViewControllerDelegate {
    func selectAnimalViewController(_ controller: SelectAnimalViewController, didSelect animal: Animal) {
        switch animal {
        case .cat:
            label.text = "喜歡 cat 的人都很可愛"
        case .fish:
            label.text = "喜歡 fish 的人都很有趣"
        case .dog:
            label.text = "喜歡 dog 的人都很聰明"
        }
    }
    
    
}
