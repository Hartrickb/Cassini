//
//  CassiniViewController.swift
//  Cassini
//
//  Created by Bennett Hartrick on 5/29/17.
//  Copyright © 2017 Bennett. All rights reserved.
//

import UIKit

class CassiniViewController: UIViewController {
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let url = DemoURL.NASA[segue.identifier ?? ""] {
            if let imageVC = (segue.destination.contents as? ImageViewController) {
                imageVC.imageURL = url
                imageVC.title = (sender as? UIButton)?.currentTitle
            }
        }
    }

}


extension UIViewController {
    
    var contents: UIViewController {
        if let navCon = self as? UINavigationController {
            return navCon.visibleViewController ?? self
        } else {
            return self
        }
    }
    
}






















