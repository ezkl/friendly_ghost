# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require File.expand_path('../lib/friendly_ghost/version.rb', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Ezekiel Templin']
  gem.email         = ['zeke@templ.in']
  gem.description   = %q{CasperJS commands run in processes spawned by Ruby}
  gem.summary       = %q{Ruby runner for CasperJS}
  gem.homepage      = 'https://github.com/ezkl/friendly_ghost'
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = 'friendly_ghost'

  gem.require_paths = ['lib']
  gem.version       = FriendlyGhost::VERSION

  gem.add_dependency             'posix-spawn', '~> 0.3.6'
  gem.add_dependency             'multi_json', '~> 1.10.1'
  gem.add_dependency             'casperjs', '~> 1.1-beta3'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'

  gem.required_ruby_version = '>= 1.9'
end
