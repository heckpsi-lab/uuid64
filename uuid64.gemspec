Gem::Specification.new do |s|
  s.name        = 'uuid64'
  s.version     = '0.0.7'
  s.required_ruby_version = '>=2.3.0'
  s.date        = '2016-11-20'
  s.summary     = 'This is a library generating unique id in short pattern.'
  s.description = 'This is a library generating unique id in short pattern.'
  s.authors     = ['HeckPsi Lab']
  s.email       = 'delton@heckpsi.com'
  s.files       = ['lib/uuid64.rb']
  s.homepage    = 'https://github.com/heckpsi-lab/uuid64'
  s.add_runtime_dependency 'base62', '~> 1.0'
  s.license     = 'MIT'
end
