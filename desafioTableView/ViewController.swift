//
//  ViewController.swift
//  desafioTableView
//
//  Created by Rogério Tavares on 15/03/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    
    var names: [Person] = [
        Person(name: "Paulo", city: "São Paulo"),
        Person(name: "Giovanna", city: "Bauru"),
        Person(name: "Roger", city: "Recife"),
        Person(name: "Everton", city: "Barbalha"),
        Person(name: "Larissa", city: "Uberaba"),
        Person(name: "Jailson", city: "Recife"),
        Person(name: "Doug", city: "BH")
    ].sorted {
        $0.name < $1.name
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegates()
        registerCell()
        
        title = "Grupo legal!"
    }

    private func delegates() {
        tableview.delegate = self
        tableview.dataSource = self
    }
    
    private func registerCell() {
        let nib = UINib(nibName: NameTableViewCell.identifier, bundle: nil)
        tableview.register(nib, forCellReuseIdentifier: NameTableViewCell.identifier)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == DetailsViewController.identifier {
            if let details = segue.destination as? DetailsViewController {
                if let name = sender as? String {
                    details.setName(name)
                }
            }
        }
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let name = names[indexPath.row].name
        
        performSegue(withIdentifier: DetailsViewController.identifier, sender: name)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableview.dequeueReusableCell(withIdentifier: NameTableViewCell.identifier, for: indexPath) as? NameTableViewCell else {
            return UITableViewCell()
        }
        
        let person = names[indexPath.row]
        
        cell.setup(person)
        
        return cell
    }
    
    
}
