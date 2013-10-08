module Newsletter
  module Generators
    class MarkdownFormatter
      def header
        %(# Hello World!)
      end

      def content
        %(lorem ipsum)
      end

      def execute
        <<EOF
#{header}

#{content}
EOF
      end
    end
  end
end
