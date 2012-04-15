# Podspecs for cocos2d-iphone and its related libraries

## Podfile 

```
platform :ios
dependency 'cocos2d-iphone',           '~> 1.0.1'
dependency 'cocos2d-iphone/Platforms/iOS'
dependency 'cocos2d-iphone/CocosDenshion'
dependency 'cocos2d-iphone/CocosDenshionExtras'
dependency 'cocos2d-iphone/cocoslive'
```

CocosDenshionExtras, cocoslive are optional.
  
## Installing cocos2d-iphone as a Pod (Using Cocoapod in the cocos2d-iphone Hello World)
1. Copy the specs folders "cocos2d-iphone" and "FontLabel" to ~/.cocoapods/master. 
2. Create a new cocos2d project
3. In the root of your project, create Podfile
4. run `pod install App.xcproject`
5. Use Xcode to open App.xcworkspace
6. Remove unncessary files
  * libs/cocos2d
  * libs/CocosDenshion
  * libs/cocoslive
  * libs/TouchJSON
  * libs/FontLabel

## Running tests
1. Install cocos2d-iphone pods to the test project 
  * Add Podfile
  * run pod install
  `pod install cocos2d-ios.xcodeproj`

2. Edit Test Target
  * In Build Phases, remove "cocos2d", "CocosDenshion", "cocoslive" from "Target Dependencies", and remove "libcocos2d.a", "libCocosDenshion.a", "libcocoslive.a" from "Link Binary With Libaries"
  * In Build Settings, clear "Other Linker Flags"

## Known issues
* cocoslive didn't pass the test. (I couldn't run it in the original cocos2d-iphone test project too.)
* Dependencies such as TouchJSON, FontLabel, might be newer than the bundled version of cocos2d-iphone

## TODO
* Create a podspec for Chipmunk podspec
* Create podspecs for cocos2d-extensions
* Create a podspec for cocos2d-iphone Mac 
* Create podspecs for cocos2d-iphone 1.1 and 2.0
* Add cleanup_paths in the podspec

## License
These podspecs and CocoaPods are available under the [MIT license](http://www.opensource.org/licenses/mit-license.php).

## Related links
* [CocoaPods](http://cocoapods.org)
* [cocos2d-iphone](http://cocos2d-iphone.org)
