require 'test_helper'
require 'pry'
require 'newsletter/generator'
require 'newsletter/generators/html'
require 'newsletter/generators/markdown'

module Newsletter
  describe Generator do
    it "generates a newsletter in HTML" do
      final_result = File.read File.expand_path(
        "fixtures/newsletter.html",
        File.dirname(__FILE__)
      )

      Generator.new(:html).render.must_include final_result
    end

    it "generates a report in Markdown" do
      final_result = File.read File.expand_path(
        "fixtures/newsletter.markdown",
        File.dirname(__FILE__)
      )

      Generator.new(:markdown).render.must_include final_result
    end

  end
end
