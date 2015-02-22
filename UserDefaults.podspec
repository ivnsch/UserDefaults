Pod::Spec.new do |s|
  s.name             = "UserDefaults"
  s.version          = "0.1.0"
  s.summary          = "Safe, convenient wrapper for NSUserDefaults, in Swift"
  s.homepage         = "https://github.com/i-schuetz/UserDefaults"
  s.license          = 'MIT'
  s.author           = { "i-schuetz" => "ivanschuetz@gmail.com" }
  s.source           = { :git => "https://github.com/i-schuetz/UserDefaults.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'UserDefaults' => ['Pod/Assets/*.png']
  }
end
