//
//  InputAnimalViewController.swift
//  Demo
//
//  Created by SHIH-YING PAN on 2020/12/21.
//

import UIKit

    

protocol SelectAnimalViewControllerDelegate: AnyObject {
    func selectAnimalViewController(_ controller: SelectAnimalViewController, didSelect animal: Animal)
}

class SelectAnimalViewController: UIViewController {
    
    weak var delegate: SelectAnimalViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
   
    @IBAction func selectAnimal(_ sender: UIButton) {
        switch sender.currentTitle {
        case "🐈":
            delegate?.selectAnimalViewController(self, didSelect: .cat)
        case "🐠":
            delegate?.selectAnimalViewController(self, didSelect: .fish)
        case "🦮":
            delegate?.selectAnimalViewController(self, didSelect: .dog)
        default:
            break
        }
        navigationController?.popViewController(animated: true)
    }
}
