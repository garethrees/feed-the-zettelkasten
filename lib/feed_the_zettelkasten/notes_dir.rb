# frozen_string_literal: true

require 'pathname'

module FeedTheZettelkasten
  class NotesDir
    def initialize(path, file_extension: 'md')
      @path = Pathname.new(path)
      @file_extension = file_extension
    end

    def created_on(date)
      Notes.new(path.glob("*#{ date.strftime('%Y%m%d') }*.#{ file_extension }"))
    end

    protected

    attr_reader :path, :file_extension
  end
end
