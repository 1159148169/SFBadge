# SFBadge
SFBadge is a pure-swift, lightweight GUI library for display a badge, fits any UIView.
## Features
![image](https://github.com/1159148169/SFBadge/raw/master/SFBadgePlay.gif)
## Install
Just download my project, then copy SFBadge.swift to your project, that's all!
## Use
UITableViewCell has different API from other UIView,just for display cool.
You can use it easily by:
```swift
testButton.setBadge(badgeID: 1, badgeNum: 10) //You set badge number 10.
cell.setBadgeForCell(badgeID: 2, badgeNum: 10)
```
Or you can customize more by:
```swift
testButton.setBadge(badgeID: 3, badgeNum: 10, badgeColor: UIColor.red, badgeAnimate: false, badgeToIcon: false)
cell.setBadgeForCell(badgeID: 4, badgeNum: 0, badgeForText: true, badgeColor: UIColor.clear, badgeAnimate: true, badgeToIcon: false, badgeText: "SFBadgeForCell") //You set a text badge for cell.
cell.setBadgeForCell(badgeID: 5, badgeNum: 10, badgeForText: false, badgeColor: UIColor.blue, badgeAnimate: true, badgeToIcon: false, badgeText: "") //You set a normal badge for cell.
```
**Attention: You must set a ID for every badge,because I use ID to change badge and remove badge.**
You can change badge num by setBadge method or:
```swift
testButton.changeBadgeNum(badgeID: 1, newBadgeNum: 11, badgeToIcon: false)
cell.changeBadgeNumForCell(badgeID: 2, newBadgeNum: 11, badgeToIcon: false)
```
You can remove badge by:
```swift
testButton.removeBadge(badgeID: 1, badgeToIcon: false)
cell.removeBadgeForCell(badgeID: 2, badgeToIcon: false)
```
## Others
If you find any bug or have better advice,please contact me.Thank you!
## License
MIT license.
