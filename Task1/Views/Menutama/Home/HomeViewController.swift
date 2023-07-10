//
//  HomeViewController.swift
//  Task1
//
//  Created by Indah Nurindo on 07/07/2566 BE.
//

import UIKit

class HomeViewController: UIViewController {
  
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = self
        collectionView.delegate = self
//        collectionView.collectionViewLayout = UICollectionViewLayout()
        // Do any additional setup after loading the view.
    }
    

}

extension HomeViewController:  UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return activities.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
     return CGSize(width: 200, height: 300)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellHome =  collectionView.dequeueReusableCell(withReuseIdentifier: "ListCollectionViewCell", for: indexPath) as! ListCollectionViewCell
            let cellHome2 = activities[indexPath.row]
            collectionView.deselectItem(at: indexPath, animated: true)
        cellHome.labelImageView.text = cellHome2.title
        cellHome.imageListView.image = cellHome2.imageList
        cellHome.imageListView.contentMode = .scaleAspectFit
            return cellHome
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       let detail = self.storyboard?.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
        detail.activity = activities[indexPath.row]
        self.navigationController?.pushViewController(detail, animated: true)
    }
}
