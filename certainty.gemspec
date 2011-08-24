# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "certainty/version"

Gem::Specification.new do |s|
  s.name        = "certainty"
  s.version     = Certainty::VERSION
  s.authors     = ["Hakan Ensari"]
  s.email       = ["code@papercavalier.com"]
  s.homepage    = "http://github.com/hakanensari/certainty"
  s.summary     = %q{An object that represents truth}
  s.description = %q{Certainty provides Boolean, an object that represents truth.}

  s.rubyforge_project = "certainty"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
