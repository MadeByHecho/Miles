#
#  Be sure to run `pod spec lint Miles.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.name         = "Miles"
  s.version      = "2.3.3"
  s.swift_version = '5.0'
  s.summary      = "A thin wrapper around XCTest Marcos to make tests just a bit more readable."
  s.description  = <<-DESC
  Miles is a simple solution to an XCTest readability problem.

It feels like every 6 months or so I hop on the Quick/Kiwi bandwagon (because of my frustration with the readability of XCTest) only to grow frustrated with some of the limitations that Xcode imposes. Miles is the simplest solution to the problem that I could come up with.
                   DESC

  s.homepage     = "https://github.com/MadeByHecho/Miles"

  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.license      = { :type => "MIT", :file => "LICENSE" }

  # ――― Author Information ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.author             = { "Scott Petit" => "scott@hecho.io" }
  s.social_media_url   = "http://twitter.com/ScottPetit"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.10"
  s.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.source       = { :git => "https://github.com/MadeByHecho/Miles.git", :tag => s.version.to_s }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source_files  = "Sources/Miles/Miles.swift"

  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.framework  = "XCTest"

end
