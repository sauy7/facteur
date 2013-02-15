# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'facteur/version'

Gem::Specification.new do |gem|
  gem.name          = "facteur"
  gem.version       = Facteur::VERSION
  gem.authors       = ["Rawane ZOSSOU", "sauy7"]
  gem.email         = ["dev@raw1z.fr", "tim@heighes.com"]
  gem.description   = %q{Facteur allows you add a messaging system in your Rails 3. You can create many mailboxes for your users. They will be able to send and receive messages.}
  gem.summary       = %q{Facteur allows you add a messaging system in your Rails 3. You can create many mailboxes for your users. They will be able to send and receive messages.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^spec/})
  gem.require_paths = ["lib"]
  gem.add_development_dependency('awesome_print', '~>0.3.2')
  gem.add_development_dependency('rake', '~>10.0.2')
  gem.add_development_dependency('rspec', '~>2.5.0')
  gem.add_development_dependency('fuubar', '~>0.0.4')
  gem.add_development_dependency('sqlite3', '~>1.3.3')
  gem.add_dependency('mongoid', '~>3.0')
  gem.add_dependency('activerecord', '~>3.2.9')
end
