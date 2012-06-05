# ![CCPods](http://i.imgur.com/sP8XQ.png)

[![Build Status](https://secure.travis-ci.org/CCPods/CCPods-specs.png?branch=master)](http://travis-ci.org/CCPods/CCPods-specs)

A repository of CocoaPods specifications for cocos2d-iphone and its extensions

## Pod source
```
pod repo add CCPods https://github.com/CCPods/CCPods-specs.git
```

## Example Podfile for iOS

```
platform :ios
dependency 'cocos2d-iphone',           '~> 1.0.1'
dependency 'cocos2d-iphone/CocosDenshion'
dependency 'cocos2d-iphone/CocosDenshionExtras'
dependency 'cocos2d-iphone/cocoslive'
```

CocosDenshionExtras, cocoslive are optional.
  
## Installing cocos2d-iphone as a Pod (Using CCPods in the cocos2d-iphone Hello World)
1. Create a new cocos2d project
2. In the root of your project, create Podfile
3. run `pod install App.xcproject`
4. Use Xcode to open App.xcworkspace
5. Remove Other Linker Flags in the Project, so that the value is not overriding that from Pods.xcconfig
6. Remove unncessary files
  * libs/cocos2d
  * libs/CocosDenshion
  * libs/cocoslive
  * libs/TouchJSON
  * libs/FontLabel

## Running tests
1. Install CCPods to the test project 
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
* Test the podspec of cocos2d-iphone for Mac OS
* Create podspecs for cocos2d-iphone 2.0

## License
These podspecs and CocoaPods are available under the [MIT license](http://www.opensource.org/licenses/mit-license.php).

## Related links
* [CocoaPods](http://cocoapods.org)
* [cocos2d-iphone](http://cocos2d-iphone.org)

## Donating

[Support CCPods at Pledgie](http://pledgie.com/campaigns/17190)

<a href='http://www.pledgie.com/campaigns/17190'><img alt='Click here to lend your support to: CCPods and make a donation at www.pledgie.com !' src='http://www.pledgie.com/campaigns/17190.png?skin_name=chrome' border='0' /></a>

[![Flattr this git repo](http://api.flattr.com/button/flattr-badge-large.png)](https://flattr.com/submit/auto?user_id=l4u&url=http://github.com/CCPods/CCPods-specs&title=CCPods&language=&tags=github&category=software)
