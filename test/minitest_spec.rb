require "minitest/autorun"
require "capybara/minitest"

class HomeSpec < MiniTest::Spec
  include Capybara::DSL
  include Capybara::Minitest::Assertions

  before do
    Capybara.register_driver :selenium do |app|
      Capybara::Selenium::Driver.new(app, :browser => :chrome)
    end
    Capybara.default_driver = :selenium_chrome
  end

  describe "GitHub Home Page" do
    it "home test" do
      visit "http://www.github.com"

      assert_content "Homepage"
      page.must_have_content "Homepage"
    end
  end

  describe "Two numbers" do
    it "home test" do
    end
  end
end