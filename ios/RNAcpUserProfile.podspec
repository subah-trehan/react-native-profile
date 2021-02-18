
Pod::Spec.new do |s|
  s.name         = "RNAcpUserProfile"
  s.version      = "1.0.0"
  s.summary      = "RNAcpUserProfile"
  s.description  = <<-DESC
                  RNAcpUserProfile
                   DESC
  s.homepage     = "https://github.com/subah-trehan/react-native-profile"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/subah-trehan/react-native-profile.git", :tag => "#{s.version}" }
  s.source_files  = "*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  s.frameworks = 'UIKit', 'SystemConfiguration', 'WebKit', 'UserNotifications'
  s.library = 'sqlite3.0', 'c++', 'z'
   s.vendored_frameworks = 'ios/libs/ACPUserProfile.xcframework'

end
