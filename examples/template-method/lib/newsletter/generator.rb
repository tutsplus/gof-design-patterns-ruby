module Newsletter
  class Generator
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
      case format
      when :html then %(<h1>Hello World!</h1>)
      when :markdown then %(# Hello World!)
      end
    end

    def content
    case format
    when :html then <<EOF
<div class="content">
  <p>lorem ipsum</p>
</div>
EOF
    when :markdown then %(lorem ipsum)
    end
    
    end
  end
end
