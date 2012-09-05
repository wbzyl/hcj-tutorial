# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.name        = "hcj-tutorial"
  gem.version     = "0.0.1"

  gem.authors     = ["Włodek Bzyl"]
  gem.email       = ["matwb@ug.edu.pl"]
  gem.homepage    = "http://tao.inf.ug.edu.pl"

  gem.description = %q{Notatki do wykładu „HTML5, CSS3 i Javascript”. 2012/13}
  gem.summary     = %q{Notatki do wykładu „HTML5, CSS3 i Javascript”}

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'rubygems-bundler'

  gem.add_runtime_dependency 'sinatra-blog'
  gem.add_runtime_dependency 'rack-codehighlighter'

  gem.add_runtime_dependency 'sinatra-static-assets'
  gem.add_runtime_dependency 'sinatra-filler'
end
