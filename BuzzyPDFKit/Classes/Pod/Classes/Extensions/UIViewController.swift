//
//  UIViewController.swift
//  Pods
//
//  Created by Arun Jadhav on 07/22/19.
//
//

import UIKit

extension UIViewController {
    
    static func topController() -> UIViewController? {
        if var topController = UIApplication.shared.keyWindow?.rootViewController {
            while let presentedViewController = topController.presentedViewController {
                topController = presentedViewController
            }
            
            return topController
        }
        return nil
    }
}
