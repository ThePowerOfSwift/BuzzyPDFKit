//
//  PDFObjectParser.swift
//  Pods
//
//  Created by Arun Jadhav on 07/22/19.
//
//

import UIKit

open class PDFObjectParser {
    let document: PDFDocument
    let attributes: PDFDictionary?
    
    public init(document: PDFDocument) {
        self.document = document
        if let catalogue = document.documentRef?.catalog {
            attributes = PDFDictionary(dictionaryRef: catalogue)
        }
        else {
            attributes = nil
        }
    }
}
