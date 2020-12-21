//
//  FavoriteAnimalViewController.swift
//  Demo
//
//  Created by SHIH-YING PAN on 2020/12/21.
//

import UIKit

class FavoriteAnimalViewController: UIViewController {

    
    @IBOutlet weak var animalImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBSegueAction func showSelectAnimal(_ coder: NSCoder) -> SelectAnimalViewController? {
        let selectAnimalViewController = SelectAnimalViewController(coder: coder)
        selectAnimalViewController?.delegate = self
        return selectAnimalViewController
    }

}

extension FavoriteAnimalViewController: SelectAnimalViewControllerDelegate {
    func selectAnimalViewController(_ controller: SelectAnimalViewController, didSelect animal: Animal) {
        animalImageView.image = UIImage(named: animal.rawValue)

    }
    
}
