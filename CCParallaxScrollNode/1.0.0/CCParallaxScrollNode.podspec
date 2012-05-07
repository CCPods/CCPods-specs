Pod::Spec.new do |s|
  s.name     = 'CCParallaxScrollNode'
  s.version  = '1.0.0'
  s.summary  = 'Easy to use parallax scroll class, with ability to create infinite/repeating parallax effects (like in the cartoons).'
  s.homepage = 'https://github.com/aramkocharyan/cocos2d'
  s.author   = { 'Aram Kocharyan' => 'http://ak.net84.net/' }

  s.source   = { :git => 'git://github.com/aramkocharyan/cocos2d.git', :commit => 'ae1ac270b6091514577ed9231a90f5d7fe980079'}

  s.source_files = '*.{h,m,mm}'
end
