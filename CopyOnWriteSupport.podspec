Pod::Spec.new do |s|
  s.name             = 'CopyOnWriteSupport'
  s.version          = '1.0.0'
  s.summary          = 'A container for deep-coping lazily'
  s.description      = <<-DESC
ShadowValue container is helpful to wrap your value type that is not supported CoW
                       DESC

  s.homepage         = 'https://github.com/sangho-82/copy-on-write-support'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'SangHo Cha' => 'ipnetwork82@gmail.com' }
  s.source           = { :git => 'https://github.com/sangho-82/copy-on-write-support.git', :tag => s.version.to_s }

  s.source_files     = 'CopyOnWriteSupport/**/*.{swift,h}'
  
  s.ios.deployment_target     = '12.0'
  s.osx.deployment_target     = '10.13'
  s.watchos.deployment_target = '4.0'
  s.tvos.deployment_target    = '12.0'
  
  s.swift_version             = '5.9'
end
