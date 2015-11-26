# -*- encoding: utf-8 -*-
# stub: fullcalendar-bootstrap-rails 2.3.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "fullcalendar-bootstrap-rails"
  s.version = "2.3.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Marius Butuc"]
  s.bindir = "exe"
  s.date = "2015-04-11"
  s.description = "You think FullCalendar is a fruitful addition to your Rails app. But you already use Bootstrap. Welcome!"
  s.email = ["marius.butuc@gmail.com"]
  s.homepage = "https://github.com/mariusbutuc/fullcalendar-bootstrap-rails"
  s.rubygems_version = "2.2.5"
  s.summary = "A port of fullcalendar-rails with bootstrap baked in."

  s.installed_by_version = "2.2.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.9"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_runtime_dependency(%q<jquery-rails>, ["< 5.0.0", ">= 3.1.1"])
      s.add_runtime_dependency(%q<momentjs-rails>, [">= 2.8.4", "~> 2.8"])
      s.add_runtime_dependency(%q<bootstrap-sass>, [">= 3.3.4", "~> 3.3"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.9"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<jquery-rails>, ["< 5.0.0", ">= 3.1.1"])
      s.add_dependency(%q<momentjs-rails>, [">= 2.8.4", "~> 2.8"])
      s.add_dependency(%q<bootstrap-sass>, [">= 3.3.4", "~> 3.3"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.9"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<jquery-rails>, ["< 5.0.0", ">= 3.1.1"])
    s.add_dependency(%q<momentjs-rails>, [">= 2.8.4", "~> 2.8"])
    s.add_dependency(%q<bootstrap-sass>, [">= 3.3.4", "~> 3.3"])
  end
end
