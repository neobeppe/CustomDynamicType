
Pod::Spec.new do |s|
  s.name             = 'CustomDynamicType'
  s.version          = '1.0.0'
  s.summary          = 'Seamlessly integrate custom fonts into iOS Dynamic Type'

  s.description      = <<-DESC
  CustomDynamicType is a versatile Swift library designed to seamlessly integrate custom fonts into iOS Dynamic Type. 
  This library is not just a means to enhance your app's aesthetic appeal with personalized fonts; it's a commitment to inclusivity.
                       DESC

  s.homepage         = 'https://github.com/neobeppe/CustomDynamicType'
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { 'Giuseppe Travasoni' => 'giuseppe.travasoni@gmail.com' }
  s.source           = { :git => 'https://github.com/neobeppe/CustomDynamicType.git', :tag => s.version.to_s }

  s.ios.deployment_target = '14.0'
  s.source_files = 'Sources/**/*'
  s.frameworks = 'UIKit', 'SwiftUI'
  
  s.swift_version = '5.3'
  
end
