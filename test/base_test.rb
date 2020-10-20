require "capybara/minitest"
require "minitest/autorun"
#require "minitest/rails/capybara"
requrie "minitest-metadata"

class CapybaraTestCase < Minitest::Spec
  include Capybara::DSL
  include Capybara::Minitest::Assertions

  def before
    Capybara.register_driver :selenium do |app|
      Capybara::Selenium::Driver.new(app, :browser => :chrome)
    end
    Capybara.default_driver = :selenium_chrome
  end

  #describe "GitHub Home Page" do
  def hello
    it "home test" do
      visit "http://www.github.com"

      assert_content "Homepage"
      page.must_have_content "Homepage"
    end
  end

  def teardown
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end
end
