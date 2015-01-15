Pod::Spec.new do |s|

  s.name         = "MQTTKit"
  s.version      = "0.1.0-TLS"
  s.summary      = "Objective-C client for MQTT 3.1"
  s.homepage     = "http://github.com/SocialStudio/MQTTKit"
  s.license      = { :type => 'Apache License, Version 2.0', :file => 'LICENSE' }
  s.author       = { "Jeff Mesnil" => "jmesnil@gmail.com" }
  s.ios.platform = :ios, '6.0'
  # for using GCD queue as Objective-C objects
  s.ios.deployment_target = "6.0"
  s.osx.platform = :osx, '10.9'
  s.source       = { :git => "https://github.com/SocialStudio/MQTTKit.git", :tag => "#{s.version}" }

  s.source_files  = 'libmosquitto/*.{h,c}', 'MQTTKit/*.{h,m}'
  s.public_header_files = 'MQTTKit/MQTTKit.h'
  
  s.requires_arc = true

  # compile with SSL support
  s.xcconfig = { "GCC_PREPROCESSOR_DEFINITIONS" => '$(inherited) WITH_TLS=1' }
  s.dependency 'OpenSSL'

end
