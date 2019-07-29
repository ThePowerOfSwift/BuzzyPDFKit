//
//  Circle.swift
//  PDF
//
//  Created by BuzzyBrains Software on 29/07/19.
//  Copyright © 2019 PDF. All rights reserved.
//

import Foundation
import UIKit


open class PDFCircleAnnotation: NSObject, PDFAnnotationButtonable {
    
    public var page: Int?
    public var uuid: String = UUID().uuidString
    public var saved: Bool = false
    public var delegate: PDFAnnotationEvent?
    var rect: CGRect = CGRect.zero {
        didSet {
            view.frame = self.rect
        }
    }
    lazy var view: PDFCircleView = PDFCircleView(parent: self)
    
    
    fileprivate var isEditing: Bool = false
    
    override required public init() { super.init() }
    
    public static var name: String? { return "Circle" }
    public static var buttonImage: UIImage? { return UIImage.bundledImage("circle") }
}

extension PDFCircleAnnotation: PDFAnnotation {
    public func save() {
        
    }
    
    public func drawInContext(_ context: CGContext) {
        
    }
    
    public func didEnd() {
        
    }
    
    public func encode(with aCoder: NSCoder) {
        
    }
    
    
    public func mutableView() -> UIView {
        view = PDFCircleView(parent: self)
        return view
    }
    
    public func touchStarted(_ touch: UITouch, point: CGPoint) {
        if rect == CGRect.zero {
            rect = CGRect(origin: point, size: CGSize(width: 150, height: 48))
        }
        self.view.touchesBegan([touch], with: nil)
    }
    
    public func touchMoved(_ touch: UITouch, point: CGPoint) {
        self.view.touchesMoved([touch], with: nil)
    }
    
    public func touchEnded(_ touch: UITouch, point: CGPoint) {
        self.view.touchesEnded([touch], with: nil)
        
        
        }
    
}




class PDFCircleView: ResizableView, PDFAnnotationView {
    var parent: PDFAnnotation?
    
    override var canBecomeFirstResponder: Bool { return true }
    
    convenience init(parent: PDFPathAnnotation, frame: CGRect) {
        
        self.init()
        
        self.frame = frame
        self.parent = parent
        self.delegate = parent
        
        backgroundColor = UIColor.clear
        isOpaque = false
        clipsToBounds = false
    }
    
    override func draw(_ rect: CGRect) {
        (parent as? PDFPathAnnotation)?.drawRect(rect)
    }
    
    
    
    
    convenience init(parent: PDFCircleAnnotation) {
        
        self.init()
        
        self.parent = parent
        self.delegate = parent
        self.frame = parent.rect
       
     
     //   self.textView.isUserInteractionEnabled = false
       // self.textView.backgroundColor = UIColor.clear
        
        self.backgroundColor = UIColor.clear
        
        //self.addSubview(textView)
    }
}


extension PDFCircleAnnotation: ResizableViewDelegate {
    func resizableViewDidBeginEditing(view: ResizableView) {}
    
    func resizableViewDidEndEditing(view: ResizableView) {
        self.rect = self.view.frame
    }
    
    func resizableViewDidSelectAction(view: ResizableView, action: String) {
        self.delegate?.annotation(annotation: self, selected: action)
    }
}
