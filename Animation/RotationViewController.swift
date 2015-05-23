//
//  RotationViewController.swift
//  Animation
//
//  Created by tujia on 15/5/20.
//  Copyright (c) 2015年 tujia. All rights reserved.
//

import UIKit

class RotationViewController: UIViewController {

    @IBOutlet weak var wheel: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        self.spin()
    }
    
    func spin() {
        UIView.animateWithDuration(1, delay: 0, options: .CurveLinear, animations: { () -> Void in
            self.wheel.transform = CGAffineTransformRotate(self.wheel.transform, CGFloat(M_PI))
        }) { (finish) -> Void in
            self.spin()
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
