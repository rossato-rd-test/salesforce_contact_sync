# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'salesforce_contact_sync/version'

Gem::Specification.new do |spec|
  spec.name          = "salesforce_contact_sync"
  spec.version       = SalesforceContactSync::VERSION
  spec.authors       = ["Thiago Rossato"]
  spec.email         = ["rossato.rd.test01@gmail.com"]

  spec.summary       = %q{Salesforce contact sync summary}
  spec.description   = %q{Salesforce contact sync description}
  spec.homepage      = "https://github.com/rossato-rd-test/salesforce_contact_sync."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.

  # Rossato: commented
  #if spec.respond_to?(:metadata)
  #  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  #else
  #  raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  #end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Rossato: Added "databasedotcom" wrapper for Salesforce communication.
  spec.add_dependency "databasedotcom"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
