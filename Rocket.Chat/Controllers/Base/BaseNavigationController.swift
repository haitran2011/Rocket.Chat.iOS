//
//  BaseNavigationController.swift
//  Rocket.Chat
//
//  Created by Rafael K. Streit on 7/6/16.
//  Copyright © 2016 Rocket.Chat. All rights reserved.
//

import Foundation
import UIKit

class BaseNavigationController: UINavigationController {
    var value: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        value = "abc"
        print(value!)
        let navBar = self.navigationBar
        navBar.tintColor = .RCBlue()
    }

    func setTransparentTheme() {
        let navBar = self.navigationBar
        navBar.setBackgroundImage(UIImage(), for: .default)
        navBar.shadowImage = UIImage()
        navBar.backgroundColor = UIColor.clear
        navBar.isTranslucent = true
        navBar.tintColor = .RCBlue()
        navBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.RCBlue()]
    }
}
