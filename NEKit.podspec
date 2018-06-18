Pod::Spec.new do |s|
  s.name = 'NEKit'
  s.version = '0.12.7'
  s.license = 'BSD'
  s.summary = 'A toolkit for Network Extension Framework.'
  s.homepage = 'https://zhuhaow.github.io/NEKit'
  s.source = { :git => 'https://github.com/thomaschristensen/NEKit.git', :tag => s.version }

  s.ios.deployment_target = '10.0'
  s.source_files = 'src/*.swift'
end
