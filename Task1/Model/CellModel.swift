//
//  CellModel.swift
//  Task1
//
//  Created by Indah Nurindo on 07/07/2566 BE.
//

import UIKit

struct CellModel {
    let phote: UIImage
    let judul: String
    let desc: String
}

var cells: [CellModel] = [ CellModel(phote: UIImage(systemName: "menucard")!, judul: "No. Karyawan", desc: "NIK.12346575"), CellModel(phote: UIImage(systemName: "book.closed.fill")!, judul: "Alamat", desc: "jakarta Selatan"), CellModel(phote: UIImage(systemName: "lock.fill")!, judul: "Change Password", desc: "*****")]
