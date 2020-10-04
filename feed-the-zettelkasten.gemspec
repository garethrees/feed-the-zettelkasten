require_relative 'lib/feed_the_zettelkasten/version'

Gem::Specification.new do |spec|
  spec.name          = 'feed-the-zettelkasten'
  spec.version       = FeedTheZettelkasten::VERSION
  spec.authors       = ['Gareth Rees']
  spec.email         = ['gareth@garethrees.co.uk']

  spec.summary       = 'Report on daily note-taking progress'
  spec.homepage      = 'https://github.com/garethrees/feed-the-zettelkasten'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')


  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = "#{ spec.homepage }/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
