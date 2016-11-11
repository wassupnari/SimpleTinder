//
//  DraggableImageView.swift
//  SimpleTinder
//
//  Created by Nari Shin on 11/10/16.
//  Copyright © 2016 Nari Shin. All rights reserved.
//

import UIKit

class DraggableImageView: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var profileImageView: UIImageView!
    

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        initSubviews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }
    
    func initSubviews() {
        // standard initialization logic
        let nib = UINib(nibName: "DraggableImageView", bundle: nil)
        nib.instantiate(withOwner: self, options: nil)
        contentView.frame = bounds
        addSubview(contentView)
            
            // custom initialization logic
        
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
