module Newsletter
  module Generators
    class Markdown < Base
      def header
        %(# Hello World!)
      end

      def content
        %(lorem ipsum)
      end
    end
  end
end
