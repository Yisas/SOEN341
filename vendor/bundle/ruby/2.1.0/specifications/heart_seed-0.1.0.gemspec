# -*- encoding: utf-8 -*-
# stub: heart_seed 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "heart_seed"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["sue445"]
  s.date = "2015-05-19"
  s.description = "seed util (convert excel to yaml and insert yaml to db) "
  s.email = ["sue445@sue445.net"]
  s.homepage = "https://github.com/sue445/heart_seed"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0")
  s.rubygems_version = "2.2.5"
  s.summary = "seed util (convert excel to yaml and insert yaml to db)"

  s.installed_by_version = "2.2.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 3.0.0"])
      s.add_runtime_dependency(%q<activerecord-import>, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0.0"])
      s.add_runtime_dependency(%q<roo>, [">= 2.0.0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<codeclimate-test-reporter>, [">= 0"])
      s.add_development_dependency(%q<coveralls>, [">= 0"])
      s.add_development_dependency(%q<database_rewinder>, [">= 0.4.2"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<pry-nav>, [">= 0"])
      s.add_development_dependency(%q<pry-remote>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rake_shared_context>, [">= 0"])
      s.add_development_dependency(%q<roo-xls>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["= 3.0.0"])
      s.add_development_dependency(%q<rspec-collection_matchers>, [">= 0"])
      s.add_development_dependency(%q<rspec-its>, [">= 0"])
      s.add_development_dependency(%q<rspec-parameterized>, [">= 0"])
      s.add_development_dependency(%q<rspec-temp_dir>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
    else
      s.add_dependency(%q<activerecord>, [">= 3.0.0"])
      s.add_dependency(%q<activerecord-import>, [">= 0"])
      s.add_dependency(%q<activesupport>, [">= 3.0.0"])
      s.add_dependency(%q<roo>, [">= 2.0.0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<codeclimate-test-reporter>, [">= 0"])
      s.add_dependency(%q<coveralls>, [">= 0"])
      s.add_dependency(%q<database_rewinder>, [">= 0.4.2"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<pry-nav>, [">= 0"])
      s.add_dependency(%q<pry-remote>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rake_shared_context>, [">= 0"])
      s.add_dependency(%q<roo-xls>, [">= 0"])
      s.add_dependency(%q<rspec>, ["= 3.0.0"])
      s.add_dependency(%q<rspec-collection_matchers>, [">= 0"])
      s.add_dependency(%q<rspec-its>, [">= 0"])
      s.add_dependency(%q<rspec-parameterized>, [">= 0"])
      s.add_dependency(%q<rspec-temp_dir>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 3.0.0"])
    s.add_dependency(%q<activerecord-import>, [">= 0"])
    s.add_dependency(%q<activesupport>, [">= 3.0.0"])
    s.add_dependency(%q<roo>, [">= 2.0.0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<codeclimate-test-reporter>, [">= 0"])
    s.add_dependency(%q<coveralls>, [">= 0"])
    s.add_dependency(%q<database_rewinder>, [">= 0.4.2"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<pry-nav>, [">= 0"])
    s.add_dependency(%q<pry-remote>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rake_shared_context>, [">= 0"])
    s.add_dependency(%q<roo-xls>, [">= 0"])
    s.add_dependency(%q<rspec>, ["= 3.0.0"])
    s.add_dependency(%q<rspec-collection_matchers>, [">= 0"])
    s.add_dependency(%q<rspec-its>, [">= 0"])
    s.add_dependency(%q<rspec-parameterized>, [">= 0"])
    s.add_dependency(%q<rspec-temp_dir>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
  end
end
