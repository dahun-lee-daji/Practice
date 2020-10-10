//
//  DetailViewController.swift
//  BountyList
//
//  Created by 이다훈 on 2020/10/11.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    
    var name: String?
    var bounty: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        }
    
    func updateUI(){
        
        if let name = self.name, let bounty = self.bounty{
            let img = UIImage(named: "\(name).jpg")
            imgView.image = img
            nameLabel.text = name
            bountyLabel.text = "\(bounty)"
        }
        
    }
    
    @IBAction func closeModal(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
