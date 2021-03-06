#
# Be sure to run `pod lib lint BuzzyPDFKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BuzzyPDFKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of BuzzyPDFKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'Library description'


  s.homepage         = 'https://github.com/jadhavarun94/BuzzyPDFKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jadhavarun94' => 'aj71312gmail.com' }
  s.source           = { :git => 'https://github.com/jadhavarun94/BuzzyPDFKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.requires_arc = true

  s.ios.deployment_target = '9.0'

  s.ios.source_files = 'BuzzyPDFKit/Classes/**/*'
  
   s.resource_bundles = {
     'BuzzyPDFKit' => ['BuzzyPDFKit/**/*.{xcassets,png,json}']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
   s.dependency 'Alamofire'
end
