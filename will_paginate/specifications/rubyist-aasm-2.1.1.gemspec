# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rubyist-aasm}
  s.version = "2.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Scott Barron"]
  s.date = %q{2009-05-16}
  s.description = %q{AASM is a continuation of the acts as state machine rails plugin, built for plain Ruby objects.}
  s.email = %q{scott@elitists.net}
  s.extra_rdoc_files = ["README.rdoc", "MIT-LICENSE", "TODO", "CHANGELOG"]
  s.files = ["CHANGELOG", "MIT-LICENSE", "Rakefile", "README.rdoc", "TODO", "lib/aasm.rb", "lib/aasm/aasm.rb", "lib/aasm/event.rb", "lib/aasm/persistence/active_record_persistence.rb", "lib/aasm/persistence.rb", "lib/aasm/state.rb", "lib/aasm/state_machine.rb", "lib/aasm/state_transition.rb", "doc/jamis.rb"]
  s.homepage = %q{http://github.com/rubyist/aasm}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--main", "README.rdoc", "--title", "AASM"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{State machine mixin for Ruby objects}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
