//
//  SFBadgeDemoViewController.swift
//  SFBadge
//
//  Created by Shi Feng on 2017/6/28.
//  Copyright © 2017年 Shi Feng. All rights reserved.
//

import UIKit

class SFBadgeDemoViewController: UIViewController {
    
    @IBOutlet weak var testButton: UIButton!
    @IBOutlet weak var testButtonByAnimation: UIButton!
    @IBOutlet weak var testButtonToIcon: UIButton!
    
    @IBAction func badgeForTestButton() {
        testButton.setBadge(badgeID: 1, 10, UIColor.red, false, false)
    }
    @IBAction func changeBadgeForTestButton() {
        testButton.changeBadgeNum(badgeID: 1, 11, false)
    }
    @IBAction func removeBadgeForTestButton() {
        testButton.removeBadge(badgeID: 1, false)
    }
    
    @IBAction func animateBadgeForTestButton() {
        testButtonByAnimation.setBadge(badgeID: 2, 20, UIColor.blue, true, false)
    }
    @IBAction func changeAnimateBadgeForTestButton() {
        testButtonByAnimation.changeBadgeNum(badgeID: 2, 21, false)
    }
    @IBAction func removeAnimateBadgeForTestButton() {
        testButtonByAnimation.removeBadge(badgeID: 2, false)
    }
    
    @IBAction func badgeForTestButtonToIcon() {
        testButtonToIcon.setBadge(badgeID: 3, 30, UIColor.brown, false, true)
    }
    @IBAction func changeBadgeForTestButtonToIcon() {
        testButtonToIcon.changeBadgeNum(badgeID: 3, 31, true)
    }
    @IBAction func removeBadgeForTestButtonToIcon() {
        testButtonToIcon.removeBadge(badgeID: 3, true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

