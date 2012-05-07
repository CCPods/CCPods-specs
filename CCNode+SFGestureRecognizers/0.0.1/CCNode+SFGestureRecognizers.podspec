Pod::Spec.new do |s|
  s.name     = 'CCNode+SFGestureRecognizers'
  s.version  = '0.0.1'
  s.license  = 'MIT'
  s.summary  = 'CCNode+SFGestureRecognizers is a category designed to simplify adding UIGestureRecognizers support in cocos2d.'
  s.homepage = 'http://github.com/krzysztofzablocki/CCNode-SFGestureRecognizers'
  s.author   = { 'Krzysztof Zabłocki' => 'http://merowing.info' }

  s.source   = { :git => 'git://github.com/krzysztofzablocki/CCNode-SFGestureRecognizers.git', :commit => '75b411d19b888c7f16abd7a227069853966d18af'}

  s.description = 'CCNode+SFGestureRecognizers is a category designed to simplify adding UIGestureRecognizers support in cocos2d. It removes the need to change cocos2d source code so that you can update your cocos2d anytime new versions are released.'
  s.source_files = 'CCNode+SFGestureRecognizers/*.{h,m}'
  s.clean_paths = "Sample Project cocos2d 1.x", "Sample Project cocos2d 2.x ARC", "Sample Project cocos2d 2.x"

  # TODO: requires arc or not?
  # s.requires_arc = true
end
