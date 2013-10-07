module Newsletter
  module Adapters
    class Json
      attr_reader :source

      def initialize source
        @source = source
      end

      def parse
        JSON.parse source
      end
    end
  end
end
