# SFBadge
SFBadge is a pure-swift, lightweight GUI library for display a badge, fits any UIView.
## Features
![image](https://github.com/1159148169/SFBadge/raw/master/SFBadgePlay.gif)
## Install
Just download my project, then copy SFBadge.swift to your project, that's all!
## Use
You can use it easily by:
```swift
testButton.setBadge(badgeID: 1, 10) //You set badge number 10.
cell.setBadgeForCell(badgeID: 2, badgeForText: false)
```
Or you can customize more by:
```swift
testButton.setBadge(badgeID: 3, 10, UIColor.red, false, false)
cell.setBadgeForCell(badgeID: 4, badgeForText: true, 0, UIColor.red, true, false, "SFBadgeForCell")
```
## Others
I will update the README after my final exam.
## License
MIT license.