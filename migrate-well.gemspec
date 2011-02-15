# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "migrate-well/version"

Gem::Specification.new do |s|
  s.name        = "migrate-well"
  s.version     = MigrateWell::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Florent Guilleux"]
  s.email       = ["florent2@gmail.com"]
  s.homepage    = %q{http://github.com/Florent2/migrate-well}
  s.summary     = %q{Adds a rake task that runs "rake db:migrate", "rake db:migrate:redo", "rake db:test:prepare" and "annotate".}
  s.description = %q{Adds a rake task "db:migrate:well" that runs "rake db:migrate", "rake db:migrate:redo", "rake db:test:prepare" and "annotate". Options: "redo:false": without db:redo; "test:false": without db:test:prepare; "anno:false": without annotate.}
  s.licenses = ["MIT"]

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency "activerecord"
end
