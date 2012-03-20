# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["Steve Hodgkiss"]
  gem.email         = ["steve@hodgkiss.me"]
  gem.description   = %q{Export foreman upstart scripts so that the app starts at boot}
  gem.summary       = %q{}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.name          = "foreman_upstart_boot"
  gem.require_paths = ["lib"]
  gem.version       = "0.0.1"

  gem.add_runtime_dependency "foreman"
end
