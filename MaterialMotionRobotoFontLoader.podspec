Pod::Spec.new do |s|
  s.name         = "MaterialMotionRobotoFontLoader"
  s.summary      = "MDFRobotoFontLoader"
  s.version      = "1.0.0"
  s.authors      = "The Material Motion Authors"
  s.license      = "Apache 2.0"
  s.homepage     = "https://github.com/material-foundation/material-roboto-font-loader-ios"
  s.source       = { :git => "https://github.com/material-foundation/material-roboto-font-loader-ios.git", :tag => "v" + s.version.to_s }
  s.platform     = :ios, "8.0"
  s.requires_arc = true
  s.default_subspec = "lib"

  s.subspec "lib" do |ss|
    ss.public_header_files = "src/*.h"
    ss.source_files = "src/*.{h,m,mm}", "src/private/*.{h,m,mm}"
  end

  s.subspec "examples" do |ss|
    ss.source_files = "examples/*.{swift,h,m}", "examples/supplemental/*.{swif,h,m}"
    ss.exclude_files = "examples/TableOfContents.swift"
    ss.resources = "examples/supplemental/*.{xcassets}"
    ss.dependency "MaterialMotionRobotoFontLoader/lib"
  end

  s.subspec "tests" do |ss|
    ss.source_files = "tests/src/*.{swift}", "tests/src/private/*.{swift}"
    ss.dependency "MaterialMotionRobotoFontLoader/lib"
  end
end
