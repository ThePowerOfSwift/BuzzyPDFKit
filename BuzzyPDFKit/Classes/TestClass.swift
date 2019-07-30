//
//  TestClass.swift
//  Pods-BuzzyPDFKit_Example
//
//  Created by BuzzyBrains Software on 30/07/19.
//

import UIKit

 public class TestClass: NSObject {
   public static let shared = TestClass()
    
   override init() {
        print("This is test PODs")
    }
    
    public func test()
    {
        print("This is test PODs")
    }
  

}
