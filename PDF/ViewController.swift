//
//  ViewController.swift
//  PDF
//
//  Created by BuzzyBrains Software on 24/07/19.
//  Copyright © 2019 PDF. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        let url = Bundle.main.path(forResource: "page_1", ofType: "pdf")!
        let document = try! PDFDocument.from(filePath: url)
//        let document = try! PDFDocument(filePath: url, password: "password_if_needed")
        let pdf = PDFViewController(document: document!)
        pdf.annotationController.annotationTypes = [
            //PDFHighlighterAnnotation.self,
            PDFPenAnnotation.self,
            PDFTextAnnotation.self,
            PDFCircleAnnotation.self
        ]
        self.navigationController?.pushViewController(pdf, animated: true)
    }
}

