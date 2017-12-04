//
//  DetailsViewController.swift
//  initiation-swift-tp
//
//  Created by Bérangère La Touche on 17/11/2017.
//  Copyright © 2017 Bérangère La Touche. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    var student : Student?
    var name : String?
    var classes : String?
    var img : UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(closeViewController))
        print(student)
        print(name)
        print(classes)
        print(img)
        // Do any additional setup after loading the view.
    }
    
    @objc func closeViewController() {
        self.dismiss(animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
