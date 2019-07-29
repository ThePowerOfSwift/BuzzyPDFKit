//
//  PDFActionURL.swift
//  Pods
//
//  Created by Arun Jadhav on 07/22/19.
//
//

import Foundation

open class PDFActionURL: PDFAction {
    var url: URL
    
    public init(url: URL) {
        self.url = url
    }
    
    public init(stringUrl: String) {
        self.url = URL(string: stringUrl)!
    }
}
