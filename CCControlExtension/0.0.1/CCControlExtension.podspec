Pod::Spec.new do |s|
  s.name     = 'CCControlExtension'
  s.version  = '0.0.1'
  s.license  = 'MIT'
  s.summary  = 'Abstract class to make the design of controllers easier for Cocos2d for iPhone'
  s.homepage = 'https://github.com/YannickL/CCControlExtension'
  s.author   = { 'Yannick Loriot' => 'http://yannickloriot.com' }

  s.source   = { :git => 'git://github.com/YannickL/CCControlExtension.git', :commit => '79e5bd08f1046ebc34a2d4771e41f170f3864c9c'}

  s.description = 'CCControlExtension is an open-source library which provides a lot of convenient control objects for Cocos2D for iPhone and Mac such as buttons, sliders or many more...  All these controls are subclasses of CCControl, which is inspired by the UIControl API from the UIKit of CocoaTouch. The main goal of CCControl is to simplify the creation of control objects in Cocos2D by providing an interface and a base implementation ala UIKit. I.e that this class manages the target-action pair registration and dispatches them to their targets when events occur. For iOS 4.0 or later and Snow Leopard the CCControl also uses the power of blocks to dispatch the events.'

  s.source_files = 'CCControlExtension/**/*.{h,m}'
  s.clean_paths = 'CCControlExtensionExamples', 'screenshots'
end
