Pod::Spec.new do |s|
  s.name         = "PromiseKitClosures"
  s.version      = "1.0.2"
  s.summary      = "Completion closures for use with PromiseKit using Swift generic types"
  s.homepage     = "https://github.com/doorbellapp/PromiseKitClosures"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = "Angelo Ashmore"

  s.source       = { :git => "https://github.com/doorbellapp/PromiseKitClosures.git", :tag => s.version }
  s.source_files = "PromiseKitClosures.swift"

  s.platform     = :ios, "8.0"
end
