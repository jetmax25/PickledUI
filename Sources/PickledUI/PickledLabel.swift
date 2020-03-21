//
//  File.swift
//  
//
//  Created by Michael Isasi on 3/21/20.
//

#if !os(macOS)
import UIKit

open class PickledLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUp()
    }
    
    internal func setUp() {
        self.shadowColor = UIColor.black
        self.shadowOffset = CGSize(width: 1.0, height: 1.0)
        self.textColor = UIColor.Pallet.text.color
    }
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        setUp()
    }
}
#endif
