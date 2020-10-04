# frozen_string_literal: true

module FeedTheZettelkasten
  class Seinfeld
    def initialize(notes, target: 3)
      @notes = notes
      @target = target
    end

    def each_day(range)
      range.each_with_object(notes) do |day, notes|
        yield day.to_s =>
          Notes.new(notes.created_on(day)).hit_target?(target)
      end
    end

    protected

    attr_reader :notes, :range, :target
  end
end
