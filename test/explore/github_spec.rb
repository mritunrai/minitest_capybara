require "minitest/autorun"
require "capybara/minitest"
require_relative "../base_spec.rb"

class HomeSpec < BaseSpec
  include Capybara::DSL
  include Capybara::Minitest::Assertions

  describe "GitHub Home Page" do
    it "home test" do
      visit "http://www.github.com"

      assert_content "Homepage"
      page.must_have_content "Homepage"
    end
  end

  describe "GitHub Home Page" do
    it "home test" do
      visit "http://www.github.com"

      assert_content "Homepage"
      page.must_have_content "Homepage"
    end
  end

  describe "Sign Page" do
    it "Login to Github" do
      visit "http://www.github.com/login"

      assert_content "Sign in to GitHub"
      page.must_have_content "Sign in to GitHub"
    end
  end
end
