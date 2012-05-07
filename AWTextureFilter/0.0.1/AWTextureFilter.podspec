Pod::Spec.new do |s|
  s.name     = 'AWTextureFilter'
  s.version  = '0.0.1'
  s.license  = 'MIT'
  s.summary  = 'Apply a gaussian blur filter to your textures in cocos2D'
  s.homepage = 'https://github.com/manucorporat/AWTextureFilter'
  s.author   = { 'ForzeField Studios S.L.' => 'http://forzefield.com' }

  s.source   = { :git => 'git://github.com/manucorporat/AWTextureFilter.git', :commit => 'c7e55d74f3cac62eae6d6adc5ee8700c4f5458d5' }
  s.source_files = 'AWTextureFilter/AWTextureFilter.{h,m}'
  s.clean_paths = 'AWTextureFilter/CCTexture2DMutable.{h,m}'

  s.dependency 'CCTexture2DMutable', '~> 0.0.1'
end
