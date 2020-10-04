# frozen_string_literal: true

module FeedTheZettelkasten
  class Notes
    include Enumerable

    def initialize(notes)
      @notes = notes
    end

    def hit_target?(target)
      to_a.size >= target
    end

    def each
      notes.each { |note| yield note }
    end

    protected

    attr_reader :notes
  end
end
