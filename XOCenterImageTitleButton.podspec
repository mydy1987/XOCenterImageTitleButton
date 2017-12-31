Pod::Spec.new do |s|
s.name = 'XOCenterImageTitleButton'
s.version = '1.0.2'
s.license = 'MIT'
s.summary = 'An center image title button on iOS.'
s.homepage = 'https://github.com/mydy1987/XOCenterImageTitleButton'
s.authors = { '赵远东' => '556085@qq.com' }
s.source = { :git => 'https://github.com/mydy1987/XOCenterImageTitleButton.git', :tag => s.version.to_s }
s.requires_arc = true
s.ios.deployment_target = '8.0'
s.source_files = 'XOCenterImageTitleButton/*.swift'
s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
end