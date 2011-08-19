# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "boolean/version"

Gem::Specification.new do |s|
  s.name        = "boolean"
  s.version     = Boolean::VERSION
  s.authors     = ["Hakan Ensari"]
  s.email       = ["code@papercavalier.com"]
  s.homepage    = "http://github.com/hakanensari/boolean"
  s.summary     = %q{An object that represents truth}
  s.description = %q{Boolean is an object that represents truth.}

  s.rubyforge_project = "boolean"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
