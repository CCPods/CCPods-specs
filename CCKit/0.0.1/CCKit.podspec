Pod::Spec.new do |s|
  s.name     = 'CCKit'
  s.version  = '0.0.1'

  # TODO: Enable ARC
  #  s.requires_arc = true
  s.summary  = 'A set of classes that brings some of the niceties of UIKit to Cocos2D.'
  s.homepage = 'https://github.com/jerrodputman/CCKit'
  s.author   = { 
    'Sangwoo Im' => '',
    'Joe Allen, Glaivare LLC.'=>''
  }
  s.source   = { :git => 'git://github.com/jerrodputman/CCKit.git'}
  s.subspec 'CCGestureRecognizer' do |m|
    m.source_files = 'CCKit/CCGestureRecognizer.{h,m}'
  end
  s.subspec 'CCNavigationController' do |m|
    m.source_files = 'CCKit/CCNavigationController.{h,m}'
  end
  s.subspec 'CCScrollLayer' do |m|
    m.source_files = 'CCKit/CCScrollLayer.{h,m}'
  end
  s.subspec 'CCTableLayer' do |m|
    m.source_files = 'CCKit/CCTableLayer.{h,m}, CCKit/CCTableLayerCell.{h,m}'
  end
  # TODO: Add cocos2d-iphone >= 1.1.beta2
end
