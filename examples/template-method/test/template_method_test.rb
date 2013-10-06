require 'test_helper'
require 'newsletter/generators/base'
require 'newsletter/generators/html'
require 'newsletter/generators/markdown'

module Newsletter
  describe Generators::Base do
    it "generates a newsletter in HTML" do
      final_result = File.read File.expand_path(
        "fixtures/newsletter.html",
        File.dirname(__FILE__)
      )

      Generators::HTML.new.render.must_include final_result
    end

    it "generates a report in Markdown" do
      final_result = File.read File.expand_path(
        "fixtures/newsletter.markdown",
        File.dirname(__FILE__)
      )

      Generators::Markdown.new.render.must_include final_result
    end

    it "fails to render if calling the base generator class" do
      -> { Generators::Base.new.header }.must_raise NotImplementedError
      -> { Generators::Base.new.content }.must_raise NotImplementedError
    end
  end
end
