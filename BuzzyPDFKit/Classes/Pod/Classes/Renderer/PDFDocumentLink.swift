//
//  PDFDocumentLink.swift
//  Pods
//
//  Created by Arun Jadhav on 07/22/19.
//
//

import UIKit

internal class PDFDocumentLink {
    let rect: CGRect
    let dictionary: CGPDFDictionaryRef
    
    init(rect: CGRect, dictionary: CGPDFDictionaryRef) {
        self.rect = rect
        self.dictionary = dictionary
    }
}
