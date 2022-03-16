//
//  DetailsViewController.swift
//  desafioTableView
//
//  Created by Rogério Tavares on 15/03/22.
//

import UIKit

class DetailsViewController: UIViewController {
    
    static var identifier = "DetailsViewController"

    @IBOutlet weak var nameLabel: UILabel!
    
    private var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    private func configure() {
        if let name = name {
            nameLabel.text = name
        }
    }
    
    func setName(_ name: String) {
        self.name = name
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
