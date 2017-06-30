# SFBadge
SFBadge is a pure-swift, lightweight GUI library for display a badge, fits any UIView.
## Features
![image](https://github.com/1159148169/SFBadge/raw/master/SFBadgePlay.gif)
## Install
Just download my project, then copy SFBadge.swift to your project, that's all!
## Use
You can use it easily by:
```swift
testButton.setBadge(badgeID: 1, badgeNum: 10) //You set badge number 10.
cell.setBadgeForCell(badgeID: 2, badgeNum: 10)
```
Or you can customize more by:
```swift
testButton.setBadge(badgeID: 3, badgeNum: 10, badgeColor: UIColor.red, badgeAnimate: false, badgeToIcon: false)
cell.setBadgeForCell(badgeID: 4, badgeNum: 0, badgeForText: true, badgeColor: UIColor.clear, badgeAnimate: true, badgeToIcon: false, badgeText: "SFBadgeForCell")
```
## Others
I will update the README after my final exam.
## License
MIT license.
