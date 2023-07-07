//
//  ExtensionView.swift
//  Task1
//
//  Created by Indah Nurindo on 07/07/2566 BE.
//

import UIKit

extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}

class Alert {
    static func createAlertController(title: String, message: String) -> UIAlertController {
         let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
         
         let okAction = UIAlertAction(title: "Ok", style: .default) { (action) in
             alert.dismiss(animated: true, completion: nil)
         }
         
         alert.addAction(okAction)
         
         return alert
     }
}



