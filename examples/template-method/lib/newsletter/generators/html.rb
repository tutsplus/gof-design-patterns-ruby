module Newsletter
  module Generators
    class HTML < Base
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
    end
  end
end
