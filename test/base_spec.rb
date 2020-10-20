require "minitest/autorun"
require "capybara/minitest"

class BaseSpec < MiniTest::Spec
  include Capybara::DSL
  include Capybara::Minitest::Assertions

  before do
    Capybara.register_driver :selenium do |app|
      Capybara::Selenium::Driver.new(app, :browser => :chrome)
    end
    Capybara.default_driver = :selenium_chrome
  end

  after(:each) do
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end
end
