# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'naranjero/version'

Gem::Specification.new do |spec|
  spec.name          = "naranjero"
  spec.version       = Naranjero::VERSION
  spec.authors       = ["alu0100775846"]
  spec.email         = ["alu0100775846@ull.edu.es"]
  spec.summary       = %q{Clase naranjero.}
  spec.description   = %q{Tienes una clase naranjero, la cual crece con los años,
                        y a medida que tiene mas años, produce mas naranjas, probar
                        con hilos el crecimiento y recoleccion de las naranjas.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 2.11"

end
