//
//  ViewController.swift
//  TestSmartUIKit
//
//  Created by Ranvir Prasad on 15/06/21.
//
import SmartUIKit
import UIKit
class ViewController: UIViewController {
   let x = UITextView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
       
        x.applyString(string: "Test String Same is happening for me and I have no manifest entry in my Info.plist neither any AppDelegate methods and also no SceneDelegate class. I am setting my controller like \"terms and conditions\" for David as rootViewController and it is appearing the same as shown here in the question above. Please help as I am stuck with this UI glitch and cant move forward.. ugh! –")
        CommonStyles.txtStyle(for: .largeTitle, color: .systemBlue, bgColor: .clear).applyOnView(view: x)
        SPositions.abs(row: 2, col: -4.5, rows: -1, cols: 9).apply(on: x, superView: view)
        // Do any additional setup after loading the view.
    }


}

