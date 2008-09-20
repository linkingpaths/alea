require 'alea/version'

AUTHOR = 'Linking Paths'  # can also be an array of Authors
EMAIL = "aitor@linkingpaths.com"
DESCRIPTION = "alea is a tiny gem that aim to bring some aleatory behavior to ruby Kernel."
GEM_NAME = 'alea' 
HOMEPATH = "http://github.com/linkingpaths/alea"
EXTRA_DEPENDENCIES = []

REV = nil
# UNCOMMENT IF REQUIRED:
# REV = YAML.load(`svn info`)['Revision']
VERS = Alea::VERSION::STRING + (REV ? ".#{REV}" : "")
RDOC_OPTS = ['--quiet', '--title', 'alea documentation',
    "--opname", "index.html",
    "--line-numbers",
    "--main", "README",
    "--inline-source"]


# Generate all the Rake tasks
# Run 'rake -T' to see list of generated tasks (from gem root directory)
$hoe = Hoe.new(GEM_NAME, VERS) do |p|
  p.developer(AUTHOR, EMAIL)
  p.description = DESCRIPTION
  p.summary = DESCRIPTION
  p.url = HOMEPATH
  p.test_globs = ["test/**/test_*.rb"]
  p.clean_globs |= ['**/.*.sw?', '*.gem', '.config', '**/.DS_Store']  #An array of file patterns to delete on clean.

  # == Optional
  p.changes = p.paragraphs_of("HISTORY", 0..1).join("\n\n")
  #p.extra_deps = EXTRA_DEPENDENCIES

    #p.spec_extras = {}    # A hash of extra values to set in the gemspec.
  end

CHANGES = $hoe.paragraphs_of('HISTORY', 0..1).join("\\n\\n")
$hoe.spec.post_install_message = File.open(File.dirname(__FILE__) + "/../POSTINSTALL").read rescue ""