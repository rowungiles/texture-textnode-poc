//
//  AppDelegate.swift
//  ASTextNodePoC
//
//  Copyright © 2018 Mobula. All rights reserved.
//

import UIKit
import AsyncDisplayKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let string = "Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. X. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. Example example hello world. X. Example example hello world. X. Example. X. Example. Example."
        
        let pass = string + string + string + string
        let fail = pass + string
        
        let text = ASTextNode()
        text.maximumNumberOfLines = 0
        text.attributedText = NSAttributedString(string: fail)
        text.backgroundColor = .red
        
        let scroll = ASScrollNode()
        scroll.backgroundColor = .blue
        scroll.automaticallyManagesSubnodes = true
        scroll.automaticallyManagesContentSize = true
        scroll.layoutSpecBlock = { [text] node, size in
            return ASInsetLayoutSpec(insets: UIEdgeInsets(top: 25, left: 25, bottom: 25, right: 25), child: text)
        }
        
        let controller = ASViewController<ASScrollNode>(node: scroll)

        window?.rootViewController = controller
        
        return true
    }
}
