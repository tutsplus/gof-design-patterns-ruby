module Newsletter
  class Generator
    attr_reader :format
    def initialize format
      @format = format
    end

    def render
      formatter = Newsletter::Generators.
        const_get("#{format.to_s.capitalize}Formatter").new

      formatter.execute
    end
  end
end
