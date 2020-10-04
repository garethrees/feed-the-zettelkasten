# frozen_string_literal: true

require 'optparse'
require 'optparse/date'

module FeedTheZettelkasten
  class CLI
    # Parse CLI options
    class Options
      DEFAULTS = {
        from: Date.today - 30,
        to: Date.today,
        target: 3,
        ext: 'md'
      }.freeze
    
      def initialize(args)
        @args = args
      end

      def [](key)
        parse[key]
      end

      def to_hash
        parse
      end

      private

      attr_reader :args

      def parse
        @parse ||= parse!
      end

      def parse!
        options = DEFAULTS.dup
        option_parser.parse!(args, into: options)
        options[:path] = args.shift

        unless options[:path]
          raise OptionParser::MissingArgument, 'Missing NOTES_DIR argument'
        end

        unless File.directory?(options[:path])
          raise OptionParser::InvalidArgument,
            "'#{ options[:path] } is not a directory"
        end

        options
      end

      def option_parser
        OptionParser.new do |opts|
          opts.banner = 'Usage: feed-the-zettelkasten [options] NOTES_DIR'
          opts.on('--from[=DATE]', Date, 'Include notes after DATE (default: 30 days ago)')
          opts.on('--to[=DATE]', Date, 'Include notes before DATE (default: today)')
          opts.on('--target[=INTEGER]', Integer, 'Number of notes required to meet daily goal (default: 3)')
          opts.on('--ext[=STRING]', 'Note extension (default: md)')
          opts.on('-v', '--version', 'Print version') { exit 0 }
          opts.on('-h', '--help', 'Prints this help') do
            puts opts
            exit 1
          end
        end
      end
    end
  end
end
