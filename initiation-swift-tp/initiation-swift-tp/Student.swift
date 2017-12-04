//
//  Student.swift
//  initiation-swift-tp
//
//  Created by Bérangère La Touche on 01/12/2017.
//  Copyright © 2017 Bérangère La Touche. All rights reserved.
//

import UIKit

public class Student {
    
    public let lastname : String
    public let firstname : String
    public let classes : String
    public let img : UIImage
    
    public init(lastname: String, firstname: String, classes: String, img: UIImage) {
        self.lastname = lastname
        self.firstname = firstname
        self.classes = classes
        self.img = img
    }
    
}
