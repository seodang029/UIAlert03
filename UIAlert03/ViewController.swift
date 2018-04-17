//
//  ViewController.swift
//  UIAlert03
//
//  Created by D7703_22 on 2018. 4. 17..
//  Copyright © 2018년 D7703_22. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btn(_ sender: Any) {
    
        let myAlert = UIAlertController(title: "알림", message: "설정된 시간이 되었습니다.", preferredStyle: .actionSheet)
        
        let okAction = UIAlertAction(title: "확인", style: .default) {
            (myAction: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.red
            }
        //후행 클로저(Trailing Closure)
        
        let cancelAction = UIAlertAction(title: "cancel", style: .cancel) {
        (myAction: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.white
        }
        
        let testAcotion = UIAlertAction(title: "Delete", style: .destructive) {
            (myAction: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.green
        }
        
        myAlert.addAction(okAction)
        myAlert.addAction(cancelAction)
        myAlert.addAction(testAcotion)
        
        present(myAlert, animated:true, completion: nil)
        }
    
    }
    





