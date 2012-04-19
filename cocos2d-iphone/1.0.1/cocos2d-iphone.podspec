Pod::Spec.new do |s|
  s.name     = 'cocos2d-iphone'
  s.version  = '1.0.1'
  s.summary  = "cocos2d for iPhone is a framework for building 2D games, demos, and other graphical/interactive applications."
  s.homepage = 'http://www.cocos2d-iphone.org'
  s.authors   = {
    'Ricardo Quesada' => 'http://www.zynga.com',
    'Valentin Milea' => '',
    'Steve Oldmeadow' => 'http://www.smoco.com'
  }
  s.source   = { :git => 'git://github.com/cocos2d/cocos2d-iphone.git', :tag => 'release-1.0.1' }
  s.source_files = 'cocos2d/*.{h,m,c}', 'cocos2d/Support/*.{h,m,c}'

  s.library = 'z'
  s.frameworks   = 'QuartzCore', 'OpenGLES', 'OpenAL', 'AudioToolbox', 'AVFoundation', 'UIKit', 'Foundation', 'CoreGraphics'
  s.dependency 'TouchJSON'
  s.dependency 'FontLabel'

  # maintain folder structure
  def s.copy_header_mapping(from)
    from
  end

  # Full name: cocos2d-iphone/Platforms
  s.subspec 'Platforms' do |p|
    p.source_files = 'cocos2d/Platforms/*.{h,m,c}'

    # Full name: cocos2d-iphone/Platforms/iOS
    p.subspec 'iOS' do |ios|
      ios.source_files = 'cocos2d/Platforms/iOS/*.{h,m,c}'
    end

    # Full name: cocos2d-iphone/Platforms/Mac
    p.subspec 'Mac' do |mac|
      mac.source_files = 'cocos2d/Platforms/Mac/*.{h,m,c}'
    end

  end

  # Full name: cocos2d-iphone/CocosDenshion
  s.subspec 'CocosDenshion' do |p|
    p.source_files = 'CocosDenshion/CocosDenshion/*.{h,m,c}'
  end

  # Full name: cocos2d-iphone/CocosDenshionExtras
  s.subspec 'CocosDenshionExtras' do |p|
    p.source_files = 'CocosDenshion/CocosDenshionExtras/*.{h,m,c}'
  end

  # Full name: cocos2d-iphone/cocoslive
  s.subspec 'cocoslive' do |p|
    p.source_files = 'cocoslive/*.{h,m,c}'
  end
end
