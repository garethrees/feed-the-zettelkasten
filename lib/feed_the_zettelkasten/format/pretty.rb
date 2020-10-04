# frozen_string_literal: true

module FeedTheZettelkasten
  module Format
    class Pretty
      SYMBOLS = {
        true => '✅',
        false => '❌'
      }.freeze

      def initialize(data)
        @data = data
      end

      def to_s
        data.
          map { |date, success| "#{ date }: #{ SYMBOLS[success] }"}.
          join("\n")
      end

      protected

      attr_reader :data
    end
  end
end
