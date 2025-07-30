# -*- encoding: utf-8 -*-
# frozen_string_literal: true

$:.push File.expand_path("../lib", __FILE__)
require "split/version"

Gem::Specification.new do |s|
  s.name        = "split"
  s.version     = Split::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Andrew Nesbitt"]
  s.licenses    = ["MIT"]
  s.email       = ["andrewnez@gmail.com"]
  s.homepage    = "https://github.com/splitrb/split"
  s.summary     = "Rack based split testing framework"

  s.metadata    = {
    "homepage_uri" => "https://github.com/splitrb/split",
    "changelog_uri" => "https://github.com/splitrb/split/blob/main/CHANGELOG.md",
    "source_code_uri" => "https://github.com/splitrb/split",
    "bug_tracker_uri" => "https://github.com/splitrb/split/issues",
    "wiki_uri" => "https://github.com/splitrb/split/wiki",
    "mailing_list_uri" => "https://groups.google.com/d/forum/split-ruby",
    "funding_uri" => "https://opencollective.com/split"
  }

  s.required_ruby_version = ">= 2.7.0"
  s.required_rubygems_version = ">= 2.0.0"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency "redis",           ">= 4.2"
  s.add_dependency "sinatra",         ">= 1.2.6"
  s.add_dependency "rubystats",       ">= 0.3.0"
  s.add_dependency "matrix"
  s.add_dependency "bigdecimal"
  s.add_dependency "cgi"

  s.add_development_dependency "bundler",     ">= 1.17"
  s.add_development_dependency "simplecov",   "~> 0.15"
  s.add_development_dependency "rack-test",   "~> 2.0"
  s.add_development_dependency "rake",        "~> 13"
  s.add_development_dependency "rspec",       "~> 3.7"
  s.add_development_dependency "pry",         "~> 0.10"
  s.add_development_dependency "rails",       ">= 5.0"
end
