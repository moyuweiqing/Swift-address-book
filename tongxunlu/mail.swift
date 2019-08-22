//
//  mail.swift
//  hellow
//
//  Created by Apple on 2018/11/6.
//  Copyright © 2018年 nucle. All rights reserved.
//

import Foundation
import UIKit
class mail: NSObject {
    var name: String?
    var mail: String?
    var photo: UIImage?
    
    
    init(inputName: String? , inputMail: String? ,inputImage: UIImage? ) {
        self.name = inputName
        self.mail = inputMail
        self.photo = inputImage
    }
    
    
}
