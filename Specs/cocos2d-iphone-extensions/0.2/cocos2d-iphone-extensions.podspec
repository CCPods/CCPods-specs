Pod::Spec.new do |s|
  s.name     = 'cocos2d-iphone-extensions'
  s.version  = '0.2'
  s.license  = 'MIT'
  s.summary  = '3rd party extensions for cocos2d for iPhone '
  s.homepage = 'http://www.cocos2d-iphone.org/forum/forum/17'
  s.author   = { 'Stepan Generalov' => 'http://www.iTraceur.ru' }
  s.source   = { :git => 'git@github.com:l4u/cocos2d-iphone-extensions.git', :tag => 'v0.2' }
  s.subspec 'CCBigImage' do |m|
    m.source_files = 'Extensions/CCBigImage/*.{h,m,c}'
  end
  s.subspec 'CCLayerPanZoom' do |m|
    m.source_files = 'Extensions/CCLayerPanZoom/*.{h,m,c}'
  end
  s.subspec 'CCMenuAdvanced' do |m|
    m.source_files = 'Extensions/CCMenuAdvanced/*.{h,m,c}'
  end
  s.subspec 'CCMenuItemSpriteIndependent' do |m|
    m.source_files = 'Extensions/CCMenuItemSpriteIndependent/*.{h,m,c}'
  end
  s.subspec 'CCScrollLayer' do |m|
    m.source_files = 'Extensions/CCScrollLayer/*.{h,m,c}'
  end
  s.subspec 'CCSendMessages' do |m|
    m.source_files = 'Extensions/CCSendMessages/*.{h,m,c}'
  end
  s.subspec 'CCSlider' do |m|
    m.source_files = 'Extensions/CCSlider/*.{h,m,c}'
  end
  s.subspec 'CCVideoPlayer' do |m|
    m.source_files = 'Extensions/CCVideoPlayer/*.{h,m,c}'
    m.subspec 'iOS' do |ios|
      ios.source_files = 'Extensions/CCVideoPlayer/*.{h,m,c}'
    end
    m.subspec 'Mac' do |osx|
      # TODO add nib file?
      osx.source_files = 'Extensions/CCVideoPlayer/Mac*.{h,m,c}'
    end
  end
  s.subspec 'FilesDownloader' do |m|
    m.source_files = 'Extensions/FilesDownloader/*.{h,m,c}'
  end
  s.subspec 'TMXGenerator' do |m|
    # TODO move LFCGzip to a separated podspec
    m.source_files = 'Extensions/TMXGenerator/*.{h,m,c}'
  end
end
