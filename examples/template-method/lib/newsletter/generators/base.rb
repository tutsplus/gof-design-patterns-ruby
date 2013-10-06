module Newsletter
  module Generators
    class Base
      attr_reader :format
      def initialize(format = :html)
        @format = format
      end

      def render
        <<EOF
#{header}

#{content}
EOF
      end

      def header
        raise NotImplementedError
      end

      def content
        raise NotImplementedError
      end

    end
  end
end
