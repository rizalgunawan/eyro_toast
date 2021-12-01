#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint eyro_toast.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'eyro_toast'
  s.version          = '0.1.0'
  s.summary          = 'A simple yet powerful Flutter plugin for showing Toast Mobile, Desktop and Web.'
  s.description      = <<-DESC
A simple yet powerful Flutter plugin for showing Toast Mobile, Desktop and Web.
                       DESC
  s.homepage         = 'https://github.com/eyro-labs/eyro_toast'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Eyro Labs' => 'admin@cubeacon.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.dependency 'Toast'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end
