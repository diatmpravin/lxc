################################################################################
#
#      Author: Zachary Patten <zachary@jovelabs.net>
#   Copyright: Copyright (c) Zachary Patten
#     License: Apache License, Version 2.0
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#
################################################################################
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lxc/version'

Gem::Specification.new do |spec|
  spec.name          = "lxc"
  spec.version       = LXC::VERSION
  spec.authors       = ["Zachary Patten"]
  spec.email         = ["zachary@jovelabs.com"]
  spec.description   = %q(An interface for controlling local or remote Linux Containers (LXC))
  spec.summary       = %q(An interface for controlling local or remote Linux Containers (LXC))
  spec.homepage      = "https://github.com/zpatten/lxc"
  spec.license       = "Apache 2.0"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency("ztk")

  spec.add_development_dependency("bundler")
  spec.add_development_dependency("pry")
  spec.add_development_dependency("rake")
  spec.add_development_dependency("redcarpet")
  spec.add_development_dependency("rspec")
  spec.add_development_dependency("simplecov")
  spec.add_development_dependency("yard")
end
