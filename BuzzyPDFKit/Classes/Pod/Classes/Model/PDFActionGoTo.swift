//
//  PDFGoToAction.swift
//  Pods
//
//  Created by Arun Jadhav on 07/22/19.
//
//

import Foundation

open class PDFActionGoTo: PDFAction {
    var pageIndex: Int
    public init(pageIndex: Int) {
        self.pageIndex = pageIndex
    }
}
