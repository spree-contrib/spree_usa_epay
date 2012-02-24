# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_usa_epay'
  s.version     = '1.0.1'
  s.summary     = 'Spree Payment Gateway for USA ePay'
  s.description = 'Payment Method for USA ePay SOAP Webservice'
  s.required_ruby_version = '>= 1.8.7'

  s.authors     = ["Chris Mar"]
  s.email       = 'support@spreecommerce.com'
  s.homepage    = 'https://github.com/spree/spree_usa_epay'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency('spree_core', '>=1.0.0')
  s.add_dependency 'savon'
  s.add_development_dependency 'rspec-rails'
end