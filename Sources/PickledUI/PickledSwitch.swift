//
//  File 2.swift
//  
//
//  Created by Michael Isasi on 3/21/20.
//

#if !os(macOS)
import UIKit
open class PickledSwitch: UISwitch {

    override open var isEnabled: Bool {
        didSet {
            self.alpha = self.isEnabled ? 1.0 : 0.3
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUp()
    }
    
    internal func setUp() {
        self.onTintColor = UIColor.Pallet.primary.color
        self.backgroundColor = UIColor.Pallet.accent.color
    }
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        setUp()
    }
}
#endif
