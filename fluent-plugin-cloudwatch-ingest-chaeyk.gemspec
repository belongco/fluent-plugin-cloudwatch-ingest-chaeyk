# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fluent/plugin/cloudwatch/ingest/version'

Gem::Specification.new do |spec|
  spec.name          = 'fluent-plugin-cloudwatch-ingest-chaeyk'
  spec.version       = Fluent::Plugin::Cloudwatch::Ingest::Chaeyk::VERSION
  spec.authors       = ['chaeyk']
  spec.email         = ['chaeyk@gmail.com']

  spec.summary       = 'Fluentd plugin to ingest AWS Cloudwatch logs'
  spec.description   = 'Fluentd plugin to ingest AWS Cloudwatch logs'
  spec.homepage      = 'https://github.com/chaeyk/fluent-plugin-cloudwatch-ingest-chaeyk'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata) # rubocop:disable all
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.' # rubocop:disable all
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) } # rubocop:disable all
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.5'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'

  spec.add_dependency 'fluentd', '~>0.14.13'
  spec.add_dependency 'aws-sdk', '~>2.8.4'
end
