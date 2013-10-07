module Newsletter
  class Content
    attr_reader :title, :body

    def initialize title, body
      @title = title
      @body = body
    end

    def self.parse source
      hash = begin
        parse_json source
      rescue JSON::ParserError => e
        parse_xml source
      end

      new hash["title"], hash["body"]
    end

    def self.parse_json source
      JSON.parse source
    end

    def self.parse_xml source
      xml   = Nokogiri::XML source
      title = xml.xpath("//item/title")[0].children[0].text
      body  = xml.xpath("//item/body")[0].children[0].text

      { "title" => title, "body" => body }
    end
  end
end
