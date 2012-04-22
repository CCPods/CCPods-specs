Pod::Spec.new do |s|
  s.name     = 'cocos2d-iphone'
  s.version  = '1.1.beta2b'
  s.summary  = "cocos2d for iPhone is a framework for building 2D games, demos, and other graphical/interactive applications."
  s.homepage = 'http://www.cocos2d-iphone.org'
  s.authors   = {
    'Ricardo Quesada' => 'http://www.zynga.com',
    'Valentin Milea' => '',
    'Steve Oldmeadow' => 'http://www.smoco.com'
  }
  s.source   = { :git => 'git://github.com/cocos2d/cocos2d-iphone.git', :tag => 'release-1.1-beta2b' }

  files = FileList['cocos2d/*.{h,m,c}', 'cocos2d/Support/*.{h,m,c}', 'cocos2d/Platforms/*.{h,m,c}']
  if config.ios?
    files.include 'cocos2d/Platforms/iOS/*.{h,m,c}'
  else
    files.include 'cocos2d/Platforms/Mac/*.{h,m,c}'
  end
  s.source_files = files

  s.library = 'z'
  s.frameworks   = 'QuartzCore', 'OpenGLES', 'OpenAL', 'AudioToolbox', 'AVFoundation', 'UIKit', 'Foundation', 'CoreGraphics'
  s.dependency 'FontLabel'

  # maintain folder structure
  def s.copy_header_mapping(from)
    from
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
    p.dependency 'TouchJSON', '~> 1.0'
  end
end
