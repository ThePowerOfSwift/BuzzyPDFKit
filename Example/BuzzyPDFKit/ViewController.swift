//
//  ViewController.swift
//  BuzzyPDFKit
//
//  Created by jadhavarun94 on 08/01/2019.
//  Copyright (c) 2019 jadhavarun94. All rights reserved.
//

import UIKit
import BuzzyPDFKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = Bundle.main.path(forResource: "sample2", ofType: "pdf")!
        let document = try! PDFDocument.from(filePath: url)
        
        let pdf = PDFViewController(document: document!)
        pdf.annotationController.annotationTypes = [
            PDFHighlighterAnnotation.self,
            PDFPenAnnotation.self,
            PDFTextAnnotation.self
        ]
        
        
        self.navigationController?.pushViewController(pdf, animated: true)
        //imgView.image = #imageLiteral(resourceName: "pen")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

