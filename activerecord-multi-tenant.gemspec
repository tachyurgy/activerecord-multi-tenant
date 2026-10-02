# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)
require 'activerecord-multi-tenant/version'

Gem::Specification.new do |spec|
  spec.name = 'activerecord-multi-tenant-next'
  spec.version = MultiTenant::VERSION
  spec.summary = 'ActiveRecord/Rails integration for multi-tenant databases, ' \
                 'in particular the Citus extension for PostgreSQL'
  spec.description = 'A maintained fork of activerecord-multi-tenant (Citus Data) with ' \
                     'support for Rails 6.0 through 8.1. Drop-in replacement: same ' \
                     'MultiTenant API, same require path.'
  spec.authors = ['Citus Data', 'Patrick Donahue']
  spec.email = 'levelbrookteam@gmail.com'
  spec.required_ruby_version = '>= 3.0.0'
  spec.metadata = {
    'rubygems_mfa_required' => 'true',
    'source_code_uri' => 'https://github.com/tachyurgy/activerecord-multi-tenant',
    'changelog_uri' => 'https://github.com/tachyurgy/activerecord-multi-tenant/blob/master/CHANGELOG.md',
    'bug_tracker_uri' => 'https://github.com/tachyurgy/activerecord-multi-tenant/issues'
  }

  spec.files = `git ls-files -- lib LICENSE README.md CHANGELOG.md`.split("\n")
  spec.require_paths = ['lib']
  spec.homepage = 'https://github.com/tachyurgy/activerecord-multi-tenant'
  spec.license = 'MIT'

  spec.add_dependency 'rails', '>= 6'

  spec.add_development_dependency 'anbt-sql-formatter'
  spec.add_development_dependency 'codecov'
  spec.add_development_dependency 'pg'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '>= 3.0'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'sidekiq'

  spec.add_development_dependency 'thor'
end
