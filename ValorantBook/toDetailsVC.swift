//
//  toDetailsVC.swift
//  ValorantBook
//
//  Created by Murat Çelik on 17.02.2023.
//

import UIKit

class toDetailsVC: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var featuresLabel: UILabel!
    
    var selectedValorant : Valorant?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedValorant?.name
        featuresLabel.text = selectedValorant?.duty
        imageView.image = selectedValorant?.image
    }
    


}
