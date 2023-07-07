//
//  ProfileViewController.swift
//  Task1
//
//  Created by Indah Nurindo on 07/07/2566 BE.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var profileTableView: UITableView!

    @IBOutlet weak var descProfil: UILabel!
    @IBOutlet weak var nameProfile: UILabel!
    @IBOutlet weak var imageProfile: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        profileTableView.dataSource = self
        profileTableView.delegate = self
        profileTableView.register(UINib(nibName: "CellTableViewCell", bundle: nil), forCellReuseIdentifier:"cell")
    }

}

extension ProfileViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CellTableViewCell {
        let cellProfil = cells[indexPath.row]
            tableView.deselectRow(at: indexPath, animated: true)
            cell.titleCell.text = cellProfil.judul
            cell.descCell.text = cellProfil.desc
            cell.imageCell.image = cellProfil.phote
            cell.layer.cornerRadius = cell.frame.height / 3
            cell.imageCell.clipsToBounds = true
            return cell
        }
        else {
            return UITableViewCell()
        }
    }
}
