require 'json'
require 'pry'

module Newsletter
  class Content
    attr_reader :title, :body

    def initialize title, body
      @title = title
      @body = body
    end

    def self.parse json
      hash = JSON.parse json
      new hash["title"], hash["body"]
    end
  end
end
