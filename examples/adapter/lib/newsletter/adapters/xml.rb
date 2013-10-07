module Newsletter
  module Adapters
    class Xml
      attr_reader :source

      def initialize source
        @source = source
      end

      def parse
        xml   = Nokogiri::XML source
        title = xml.xpath("//item/title")[0].children[0].text
        body  = xml.xpath("//item/body")[0].children[0].text

        { "title" => title, "body" => body }
      end
    end
  end
end

