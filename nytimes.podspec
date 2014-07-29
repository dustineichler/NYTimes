Pod::Spec.new do |s|
  s.name         = "nytimes"
  s.version      = "0.1"
  s.summary      = "NYTimes Objective-C Client Library."
  s.homepage     = "https://github.com/dustineichler/NYTimes"
  s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Dustin" => "dustin@smalhaus.com" }
  s.social_media_url   = "http://twitter.com/dustineichler"
  s.platform     = :ios
  s.source       = {
    :git => "git@github.com:dustineichler/NYTimes.git",
    :tag => "0.1" 
    }
  s.source_files  = "NYTimesWrapper", "**/*.{h,m}"
  # s.exclude_files = "Classes/Exclude"
  # s.public_header_files = "Classes/**/*.h"
  s.requires_arc = false
end
