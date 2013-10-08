module Newsletter
  module Generators
    class HtmlFormatter
      def header
        %(<h1>Hello World!</h1>)
      end

      def content
      <<EOF
<div class="content">
  <p>lorem ipsum</p>
</div>
EOF
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
