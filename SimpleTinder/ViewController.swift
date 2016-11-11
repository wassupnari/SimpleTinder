//
//  ViewController.swift
//  SimpleTinder
//
//  Created by Nari Shin on 11/10/16.
//  Copyright © 2016 Nari Shin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var navImageView: UIImageView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var selectionImageView: UIImageView!
    var initialCenter: CGPoint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        initialCenter = profileImageView.center
        profileImageView.isUserInteractionEnabled = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onPhotoSwipeGestures(_ sender: UIPanGestureRecognizer) {
        
        let point = sender.location(in: view)
        
        if sender.state == UIGestureRecognizerState.began {
            
        } else if sender.state == UIGestureRecognizerState.changed {
            print("Gesture changed at: \(point)")
            
            profileImageView.center = CGPoint(x: point.x, y: initialCenter.y)
            
        } else if sender.state == UIGestureRecognizerState.ended {
            print("Gesture ended at: \(point)")
           
        }
    }

}

