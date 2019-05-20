//
//  Round3Dbutton.swift
//  NC1
//
//  Created by Benjamin Purbowasito on 16/05/19.
//  Copyright © 2019 iosda Ben. All rights reserved.
//

import UIKit


class Round3Dbutton: UIButton {
    override func awakeFromNib() {
        layer.borderWidth = 2
        layer.cornerRadius = 26
        layer.borderColor = #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)
        layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        layer.shadowRadius = 15
    }
    
    

}
