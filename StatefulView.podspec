Pod::Spec.new do |s|
  s.name         = 'StatefulView'
  s.version      = '1.0.0'
  s.summary      = ''
  s.homepage     = 'https://github.com/pengpengliu/StatefulView'
  s.authors      = 'Liu Pengpeng'

  s.ios.deployment_target = '10.0'
  s.swift_version = '4.0'

  s.source       = { git: 'https://github.com/pengpengliu/StatefulView.git', tag: "v#{s.version}" }
  s.source_files = 'StatefulView/**/*.{h,m,swift}'
end