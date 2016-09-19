# -*- encoding: utf-8 -*-
require File.expand_path('../lib/twinfield/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'twinfield-ruby'
  s.version     = Twinfield::VERSION
  s.licenses    = ['MIT']
  s.authors     = ['ForecastXL']
  s.email       = ['developers@forecastxl.com']
  s.homepage    = 'https://www.forecastxl.com'
  s.summary     = 'Ruby client for the Twinfield SOAP-based API'
  s.description = 'Twinfield is an international Web service for collaborative online accounting. The Twinfield gem is a simple client for their SOAP-based API.'

  s.files         = Dir["{lib}/**/*.rb", 'bin/*', '*.md']
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.executables   = s.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'savon'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'pry'
end
