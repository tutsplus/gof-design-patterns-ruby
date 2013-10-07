module Newsletter
  class Content
    attr_reader :title, :body

    def initialize title, body
      @title = title
      @body = body
    end

    def self.parse source, format
      adapter = const_get(
        %W(Newsletter Adapters #{format.to_s.capitalize}).join("::")
      ).new source

      hash = adapter.parse

      new hash["title"], hash["body"]
    end

  end
end
