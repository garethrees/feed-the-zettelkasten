# frozen_string_literal: true
require 'date'

require 'feed_the_zettelkasten/format/pretty'

require 'feed_the_zettelkasten/cli/options'
require 'feed_the_zettelkasten/cli'

require 'feed_the_zettelkasten/notes_dir'
require 'feed_the_zettelkasten/notes'
require 'feed_the_zettelkasten/seinfeld'
require 'feed_the_zettelkasten/version'

module FeedTheZettelkasten
  class Error < StandardError; end
end
