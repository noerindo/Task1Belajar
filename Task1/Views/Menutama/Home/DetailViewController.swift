//
//  DetailViewController.swift
//  Task1
//
//  Created by Indah Nurindo on 10/07/2566 BE.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleDetailView: UILabel!
    @IBOutlet weak var descDetailView: UILabel!
    @IBOutlet weak var imageDetailView: UIImageView!
    var activity: Activity?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let result = activity {
            titleDetailView.text = result.title
            descDetailView.text = result.descActivity
            imageDetailView.image = result.imageList
        }
        self.navigationItem.title = titleDetailView.text

        // Do any additional setup after loading the view.
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
