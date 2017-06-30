//
//  SFBadge.swift
//  SFBadge
//
//  Created by Shi Feng on 2017/6/28.
//  Copyright © 2017年 Shi Feng. All rights reserved.
//

import Foundation
import UIKit
import UserNotifications

//I use tag to mark view,so you should check your project to make sure you don't use the tag  number + badgeID before you use SFBadge.
private let badgeViewTag = 1995
private let badgeLabelTag = 817

extension UIView {
    //All UIView Can Use
    func setBadge(badgeID: Int, badgeNum: Int, badgeColor: UIColor = UIColor.red, badgeAnimate: Bool = false, badgeToIcon: Bool = false) {
        removeBadge(badgeID: badgeID)
        
        let badgeView = UIView()
        let badgeLabel = UILabel()
        
        badgeView.tag = badgeViewTag + badgeID
        badgeLabel.tag = badgeLabelTag + badgeID
        
        let badgeX: CGFloat = self.bounds.maxX - self.bounds.height / 3
        let badgeY: CGFloat = self.bounds.minY - self.bounds.height / 3
        let badgeWidth: CGFloat = self.bounds.height / 3 * 2
        let badgeHeight: CGFloat = self.bounds.height / 3 * 2
        badgeView.frame = CGRect(x: badgeX, y: badgeY, width: badgeWidth, height: badgeHeight)
        badgeView.layer.cornerRadius = self.bounds.height / 3
        badgeView.backgroundColor = badgeColor
        
        badgeLabel.text = "\(badgeNum)"
        badgeLabel.font = UIFont.systemFont(ofSize: self.bounds.height / 3)
        badgeLabel.textAlignment = NSTextAlignment.center
        badgeLabel.textColor = UIColor.white
        badgeLabel.frame = badgeView.frame
        badgeLabel.isHidden = false
        
        self.addSubview(badgeView)
        self.addSubview(badgeLabel)
        
        if badgeAnimate == true {
            badgeView.frame = CGRect(x: badgeX + (badgeWidth / 2), y: badgeY + (badgeHeight / 2), width: 0, height: 0)
            badgeLabel.frame = CGRect(x: badgeX + (badgeWidth / 2), y: badgeY + (badgeHeight / 2), width: 0, height: 0)
            badgeView.layer.cornerRadius = self.bounds.height / 3
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.2, options: UIViewAnimationOptions.beginFromCurrentState, animations: {
                badgeView.frame = CGRect(x: badgeX, y: badgeY, width: badgeWidth, height: badgeHeight)
                badgeLabel.frame = CGRect(x: badgeX, y: badgeY, width: badgeWidth, height: badgeHeight)
                badgeView.layer.cornerRadius = self.bounds.height / 3
            }, completion: nil)
        }
        
        if badgeToIcon == true {
            let center = UNUserNotificationCenter.current()
            center.requestAuthorization(options: [.alert, .sound, .badge]) {
                granted, error in /* do nothing */
            }
            UIApplication.shared.applicationIconBadgeNumber = badgeNum
        }
    }
    
    func changeBadgeNum(badgeID: Int, newBadgeNum: Int, badgeToIcon: Bool = false) {
        for i in self.subviews {
            if i.tag == badgeLabelTag + badgeID {
                (i as! UILabel).text = "\(newBadgeNum)"
            }
        }
        if badgeToIcon == true {
            UIApplication.shared.applicationIconBadgeNumber = newBadgeNum
        }
    }
    
    func removeBadge(badgeID: Int, badgeToIcon: Bool = false) {
        for i in self.subviews {
            if i.tag == badgeViewTag + badgeID || i.tag == badgeLabelTag + badgeID {
                i.removeFromSuperview()
            }
        }
        if badgeToIcon == true {
            UIApplication.shared.applicationIconBadgeNumber = 0
        }
    }
    
    //Just UITableViewCell Can Use To Make Cell Perform Better
    func setBadgeForCell(badgeID: Int, badgeNum: Int, badgeForText: Bool = false, badgeColor: UIColor = UIColor.red, badgeAnimate: Bool = false, badgeToIcon: Bool = false, badgeText: String = "") {
        removeBadgeForCell(badgeID: badgeID)
        
        let badgeView = UIView()
        let badgeLabel = UILabel()
        
        badgeView.tag = badgeViewTag + badgeID
        badgeLabel.tag = badgeLabelTag + badgeID
        
        if badgeForText == false { //Round Badge Mark
            let badgeWidth: CGFloat = self.bounds.height / 2
            let badgeHeight: CGFloat = self.bounds.height / 2
            let badgeX: CGFloat = self.bounds.maxX - badgeWidth - 8
            let badgeY: CGFloat = self.bounds.minY + self.bounds.height / 4
            badgeView.frame = CGRect(x: badgeX, y: badgeY, width: badgeWidth, height: badgeHeight)
            badgeView.layer.cornerRadius = badgeWidth / 2
            badgeView.backgroundColor = badgeColor
            
            badgeLabel.text = "\(badgeNum)"
            badgeLabel.font = UIFont.systemFont(ofSize: badgeWidth / 2)
            badgeLabel.textAlignment = NSTextAlignment.center
            badgeLabel.textColor = UIColor.white
            badgeLabel.frame = badgeView.frame
            badgeLabel.isHidden = false
            
            self.addSubview(badgeView)
            self.addSubview(badgeLabel)
            
            if badgeAnimate == true {
                badgeView.frame = CGRect(x: badgeX + (badgeWidth / 2), y: badgeY + (badgeHeight / 2), width: 0, height: 0)
                badgeLabel.frame = CGRect(x: badgeX + (badgeWidth / 2), y: badgeY + (badgeHeight / 2), width: 0, height: 0)
                UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.2, options: UIViewAnimationOptions.beginFromCurrentState, animations: {
                    badgeView.frame = CGRect(x: badgeX, y: badgeY, width: badgeWidth, height: badgeHeight)
                    badgeLabel.frame = CGRect(x: badgeX, y: badgeY, width: badgeWidth, height: badgeHeight)
                }, completion: nil)
            }
        } else { //Text View Badge Mark
            let badgeWidth: CGFloat = self.bounds.width / 2
            let badgeHeight: CGFloat = self.bounds.height / 3 * 2
            let badgeX: CGFloat = self.bounds.maxX - badgeWidth - 8
            let badgeY: CGFloat = self.bounds.minY + self.bounds.height / 6
            badgeView.frame = CGRect(x: badgeX, y: badgeY, width: badgeWidth, height: badgeHeight)
            badgeView.backgroundColor = UIColor.clear
            
            badgeLabel.text = badgeText
            badgeLabel.font = UIFont.systemFont(ofSize: badgeHeight / 2)
            badgeLabel.textAlignment = NSTextAlignment.right
            badgeLabel.textColor = UIColor.lightGray
            badgeLabel.frame = badgeView.frame
            badgeLabel.isHidden = false
            
            self.addSubview(badgeView)
            self.addSubview(badgeLabel)
            
            if badgeAnimate == true {
                badgeView.frame = CGRect(x: badgeX + badgeWidth + 8, y: badgeY, width: badgeWidth, height: badgeHeight)
                badgeLabel.frame = CGRect(x: badgeX + badgeWidth + 8, y: badgeY, width: badgeWidth, height: badgeHeight)
                UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.2, options: UIViewAnimationOptions.beginFromCurrentState, animations: {
                    badgeView.frame = CGRect(x: badgeX, y: badgeY, width: badgeWidth, height: badgeHeight)
                    badgeLabel.frame = CGRect(x: badgeX, y: badgeY, width: badgeWidth, height: badgeHeight)
                }, completion: nil)
            }
        }
        
        if badgeToIcon == true {
            let center = UNUserNotificationCenter.current()
            center.requestAuthorization(options: [.alert, .sound, .badge]) {
                granted, error in /* do nothing */
            }
            UIApplication.shared.applicationIconBadgeNumber = badgeNum
        }
    }
    
    func changeBadgeNumForCell(badgeID: Int, newBadgeNum: Int, badgeToIcon: Bool = false) {
        for i in self.subviews {
            if i.tag == badgeLabelTag + badgeID {
                (i as! UILabel).text = "\(newBadgeNum)"
            }
        }
        if badgeToIcon == true {
            UIApplication.shared.applicationIconBadgeNumber = newBadgeNum
        }
    }
    
    func removeBadgeForCell(badgeID: Int, badgeToIcon: Bool = false) {
        for i in self.subviews {
            if i.tag == badgeViewTag + badgeID || i.tag == badgeLabelTag + badgeID {
                i.removeFromSuperview()
            }
        }
        if badgeToIcon == true {
            UIApplication.shared.applicationIconBadgeNumber = 0
        }
    }
}
