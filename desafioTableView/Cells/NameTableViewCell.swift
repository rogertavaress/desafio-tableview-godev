//
//  NameTableViewCell.swift
//  desafioTableView
//
//  Created by Rogério Tavares on 15/03/22.
//

import UIKit

class NameTableViewCell: UITableViewCell {
    
    static var identifier = "NameTableViewCell"
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(_ person: Person) {
        colorView.backgroundColor = person.color
        nameLabel.text = person.name
        cityLabel.text = person.city
    }
    
}
