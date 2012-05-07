Pod::Spec.new do |s|
  s.name     = 'CCSpriteFloodFill'
  s.version  = '0.0.1'
  s.summary  = 'CCSprite subclass that implements flood fill algorithm'
  s.homepage = 'https://github.com/iNinja/CCSpriteFloodFill'
  s.author   = { 'Jeston Furqueron' => '' }
  s.source   = { :git => 'git://github.com/iNinja/CCSpriteFloodFill.git', :commit => 'd4ad6e8a94445262b533a5c669f726879d3ab5da'}
  s.source_files = 'Classes'
  s.clean_paths = "Example"
  s.dependency 'CCTexture2DMutable', '~> 0.0.1'
end
