Pod::Spec.new do |s|
  s.name     = 'FontLabel'
  s.version  = '0.0.1'
  s.platform = :ios
  s.summary  = "A project that includes a module for drawing arbitrary .ttf fonts for iPhone."
  s.homepage = 'http://zynga.com/'
  s.authors   = {
    'Zynga, Inc.' => 'http://code.zynga.com'
  }
  s.source   = { :git => 'git://github.com/zynga/FontLabel.git'}
  s.source_files = 'FontLabel/Classes/FontLabel/*{h,m}'
end
