# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rack-mount}
  s.version = "0.6.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Joshua Peek"]
  s.date = %q{2010-04-16}
  s.description = %q{Stackable dynamic tree based Rack router}
  s.email = %q{josh@joshpeek.com}
  s.extra_rdoc_files = ["LICENSE", "README.rdoc"]
  s.files = ["lib/rack/mount.rb", "lib/rack/mount/analysis/frequency.rb", "lib/rack/mount/analysis/histogram.rb", "lib/rack/mount/analysis/splitting.rb", "lib/rack/mount/code_generation.rb", "lib/rack/mount/generatable_regexp.rb", "lib/rack/mount/multimap.rb", "lib/rack/mount/prefix.rb", "lib/rack/mount/regexp_with_named_groups.rb", "lib/rack/mount/route.rb", "lib/rack/mount/route_set.rb", "lib/rack/mount/strexp.rb", "lib/rack/mount/strexp/parser.rb", "lib/rack/mount/strexp/parser.y", "lib/rack/mount/strexp/tokenizer.rb", "lib/rack/mount/strexp/tokenizer.rex", "lib/rack/mount/utils.rb", "lib/rack/mount/vendor/multimap/multimap.rb", "lib/rack/mount/vendor/multimap/multiset.rb", "lib/rack/mount/vendor/multimap/nested_multimap.rb", "lib/rack/mount/vendor/reginald/reginald.rb", "lib/rack/mount/vendor/reginald/reginald/alternation.rb", "lib/rack/mount/vendor/reginald/reginald/anchor.rb", "lib/rack/mount/vendor/reginald/reginald/atom.rb", "lib/rack/mount/vendor/reginald/reginald/character.rb", "lib/rack/mount/vendor/reginald/reginald/character_class.rb", "lib/rack/mount/vendor/reginald/reginald/collection.rb", "lib/rack/mount/vendor/reginald/reginald/expression.rb", "lib/rack/mount/vendor/reginald/reginald/group.rb", "lib/rack/mount/vendor/reginald/reginald/options.rb", "lib/rack/mount/vendor/reginald/reginald/parser.rb", "lib/rack/mount/vendor/reginald/reginald/tokenizer.rb", "lib/rack/mount/vendor/reginald/reginald/version.rb", "lib/rack/mount/version.rb", "LICENSE", "README.rdoc"]
  s.homepage = %q{http://github.com/josh/rack-mount}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Stackable dynamic tree based Rack router}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
