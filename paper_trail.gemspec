$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)

require 'paper_trail/version_number'

Gem::Specification.new do |s|
  s.name          = 'paper_trail'
  s.version       = PaperTrail::VERSION
  s.summary       = "Track changes to your models' data.  Good for auditing or versioning."
  s.description   = s.summary
  s.homepage      = 'http://github.com/airblade/paper_trail'
  s.authors       = ['Andy Stewart']
  s.email         = 'boss@airbladesoftware.com'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency 'railties',        '~> 3.0'
  
  s.add_development_dependency 'activerecord',          '>= 3.0'
  s.add_development_dependency 'dm-active_model',       '>= 1.0'
  s.add_development_dependency 'dm-core',               '>= 1.2.0'
  s.add_development_dependency 'dm-migrations',         '>= 1.2.0'
  s.add_development_dependency 'dm-serializer',         '>= 1.2.0'
  s.add_development_dependency 'dm-timestamps',         '>= 1.2.0'
  s.add_development_dependency 'dm-validations',        '>= 1.2.0'
  s.add_development_dependency 'dm-rails',              '>= 1.2.0'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'shoulda',               '2.10.3'
  s.add_development_dependency 'dm-sqlite-adapter',     '~> 1.2.0'
  s.add_development_dependency 'sqlite3'             
  s.add_development_dependency 'capybara',              '~> 1.0.0'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'actionmailer'
end
