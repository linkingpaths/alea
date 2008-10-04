Gem::Specification.new do |s|
  s.name = %q{alea}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Linking Paths"]
  s.date = %q{2008-10-04}
  s.description = %q{alea is a tiny gem that aim to bring some aleatory behavior to ruby Kernel.}
  s.email = ["aitor@linkingpaths.com"]
  s.extra_rdoc_files = ["Manifest.txt"]
  s.files = ["HISTORY", "LICENSE", "Manifest.txt", "POSTINSTALL", "README.markdown", "Rakefile", "config/hoe.rb", "config/requirements.rb", "lib/alea.rb", "lib/alea/kernel.rb", "lib/alea/numeric.rb", "lib/alea/percentage.rb", "lib/alea/range.rb", "lib/alea/version.rb", "test/test_helper.rb", "test/test_kernel.rb", "test/test_numeric.rb", "test/test_percentage.rb", "test/test_range.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/linkingpaths/alea}
  s.post_install_message = %q{
For more information on alea, see http://github.com/linkingpaths/alea

}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{alea}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{alea is a tiny gem that aim to bring some aleatory behavior to ruby Kernel.}
  s.test_files = ["test/test_helper.rb", "test/test_kernel.rb", "test/test_numeric.rb", "test/test_percentage.rb", "test/test_range.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
      s.add_development_dependency(%q<hoe>, [">= 1.7.0"])
    else
      s.add_dependency(%q<hoe>, [">= 1.7.0"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 1.7.0"])
  end
end
