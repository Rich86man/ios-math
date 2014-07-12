#
# Be sure to run `pod lib lint ${POD_NAME}.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "rkmath"
  s.version          = "0.1.0"
  s.summary          = "Commonly used math functions. Very helpful for interactive animations."
  s.description      =  
  s.homepage         = "https://github.com/rich86man/ios-math"
  s.license          = 'MIT'
  s.author           = { "Rich86man" => "RichardBKirk@Gmail.com" }
  s.source           = { :git => "github.com/rich86man/ios-math", :tag => s.version.to_s }
  s.platform 		 = 'ios'
  s.platform     = :ios, '7.0'
  s.requires_arc = false

  s.source_files = 'Library/*'

end
