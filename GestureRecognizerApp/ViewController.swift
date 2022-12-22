//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Ashish Sharma on 12/22/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changeImageAndLabel))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changeImageAndLabel() {
        print("tapped")
        if imageView.image == UIImage(named: "Wallpaper") {
            imageView.image = UIImage(named: "Apple-logo-wallpaper-hd-backgrounds")
            myLabel.text = "Apple Logo Image"
        } else {
            imageView.image = UIImage(named: "Wallpaper")
            myLabel.text = "Nature Image"
        }


    }


}

