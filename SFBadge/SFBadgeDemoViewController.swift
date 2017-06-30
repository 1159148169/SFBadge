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
        testButton.setBadge(badgeID: 1, badgeNum: 10, badgeColor: UIColor.red, badgeAnimate: false, badgeToIcon: false)
    }
    @IBAction func changeBadgeForTestButton() {
        testButton.changeBadgeNum(badgeID: 1, newBadgeNum: 11, badgeToIcon: false)
    }
    @IBAction func removeBadgeForTestButton() {
        testButton.removeBadge(badgeID: 1, badgeToIcon: false)
    }
    
    @IBAction func animateBadgeForTestButton() {
        testButtonByAnimation.setBadge(badgeID: 2, badgeNum: 20, badgeColor: UIColor.blue, badgeAnimate: true, badgeToIcon: false)
    }
    @IBAction func changeAnimateBadgeForTestButton() {
        testButtonByAnimation.changeBadgeNum(badgeID: 2, newBadgeNum: 21, badgeToIcon: false)
    }
    @IBAction func removeAnimateBadgeForTestButton() {
        testButtonByAnimation.removeBadge(badgeID: 2, badgeToIcon: false)
    }
    
    @IBAction func badgeForTestButtonToIcon() {
        testButtonToIcon.setBadge(badgeID: 3, badgeNum: 30, badgeColor: UIColor.brown, badgeAnimate: false, badgeToIcon: true)
    }
    @IBAction func changeBadgeForTestButtonToIcon() {
        testButtonToIcon.changeBadgeNum(badgeID: 3, newBadgeNum: 31, badgeToIcon: true)
    }
    @IBAction func removeBadgeForTestButtonToIcon() {
        testButtonToIcon.removeBadge(badgeID: 3, badgeToIcon: true)
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

