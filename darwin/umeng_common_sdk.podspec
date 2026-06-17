#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint umeng_common_sdk.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'umeng_common_sdk'
  s.version          = '1.3.0'
  s.summary          = 'UMeng+ component Common Flutter plugin.'
  s.description      = <<-DESC
UMeng+ component Common Flutter plugin.
                       DESC
  s.homepage         = 'https://www.umeng.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'UMeng' => 'support@umeng.com' }
  s.source           = { :path => '.' }
  s.source_files     = 'umeng_common_sdk/Sources/umeng_common_sdk/**/*.{h,m}'
  s.public_header_files = 'umeng_common_sdk/Sources/umeng_common_sdk/**/*.h'
  s.ios.dependency 'Flutter'
  s.ios.dependency 'UMCommon'
  s.ios.dependency 'UMDevice'
  s.ios.deployment_target = '12.0'
  s.static_framework = true
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
end
