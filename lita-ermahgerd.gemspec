# coding: utf-8
Gem::Specification.new do |spec|
  spec.name          = "lita-ermahgerd"
  spec.version       = "0.0.1"
  spec.authors       = ["Duyet Nguyen"]
  spec.email         = ["duyetlnguyen@gmail.com"]
  spec.summary       = %q{A Lita handler that translates chat to ermahgerd-speak}
  spec.homepage      = "https://github.com/duyetln/lita-ermahgerd"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 2.2"
  spec.add_runtime_dependency "ermahgerd", ">= 0.0.1"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", ">= 3.0.0.beta1"
end
