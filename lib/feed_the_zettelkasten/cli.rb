# frozen_string_literal: true

module FeedTheZettelkasten
  # Entrypoint for CLI usage
  class CLI
    STATUS_SUCCESS = 0
    STATUS_FAILURE = 1

    def self.run(argv)
      new(Options.new(argv)).run
    end

    def initialize(options)
      @options = options
    end

    def run
      notes = NotesDir.new(options[:path], file_extension: options[:ext])
      range = options[:from]..options[:to]

      Seinfeld.new(notes, target: options[:target]).each_day(range) do |data|
        puts Format::Pretty.new(data)
      end

      STATUS_SUCCESS
    rescue StandardError => e
      $stderr.puts e
      STATUS_FAILURE
    end

    private

    attr_reader :options
  end
end