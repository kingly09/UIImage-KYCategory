Pod::Spec.new do |s|
s.name         = "UIImage+KYCategory"
s.summary      = "This is a Category UIImage collection, can be very convenient for the picture to dye (Tinting), increase the brightness (lightening) and reduce the brightness (darkening) and other extensions of the functional modules.

This tutorial includes Objective-C and swift two implementation methods, will be given in the following."
s.version      = '1.0.0'
s.homepage     = "https://github.com/kingly09/UIImage-KYCategory"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author       = { "kingly" => "libintm@163.com" }
s.platform     = :ios, "7.0"
s.source       = { :git => "https://github.com/kingly09/UIImage-KYCategory.git", :tag => s.version.to_s }
s.social_media_url   = "https://github.com/kingly09"
s.source_files = 'kYCategory/*.{h,m}'
s.framework    = "UIKit"
s.requires_arc = true
end
