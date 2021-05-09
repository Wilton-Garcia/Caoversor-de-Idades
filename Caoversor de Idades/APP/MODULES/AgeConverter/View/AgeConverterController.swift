//
//  AgeConverterController.swift
//  Caoversor de Idades
//
//  Created by Wilton Garcia on 07/05/21.
//

import UIKit

class AgeConverterController : UIViewController{
    private var myView = AgeConverterView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = myView
    }
    
    func convertAge(Age: Int) -> Int{
        return Age * 7
    }
}
