Gem::Specification.new do |s|
  s.name = 'test_unit_pundit'
  s.version = '0.1.1'
  s.summary = 'Test::Unit support for Pundit'
  s.description = 'Test::Unit support for Pundit'
  s.homepage = 'https://github.com/cqc1008/test_unit_pundit'

  s.rubyforge_project = 'test_unit_pundit'
  s.authors = ['Tony Cao']
  s.email = ['fm1008rr@sina.com']
  s.license = 'MIT'

  s.files = `git ls-files`.split($/)
  s.test_files = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_dependency 'activesupport', '>= 3.0.0'
  s.add_dependency 'railties', '>= 3.0.0'
  s.add_dependency 'pundit', '~> 0.2.3'

  s.add_development_dependency 'activesupport', '4.1.0'
  s.add_development_dependency 'railties', '4.1.0'
  s.add_development_dependency 'minitest', '5.3.2'
end