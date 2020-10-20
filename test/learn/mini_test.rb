require "capybara/minitest"
require "minitest/autorun"

class UserCreatesSkillTest < Minitest::Test
  include Capybara::DSL

  def test_mk
    assert_equal "1", "1"
  end

  def test_creates_a_skill_with_valid_attributes
    visit "/"
    click_link("New Skill")
    fill_in("skill[name]", with: "Skill name")
    fill_in("skill[description]", with: "Skill description")
    select "School", from: "category_id"
    click_button("Submit")

    assert_equal "/skills", current_path

    within("#skill") do
      assert page.has_content?("Skill name")
      assert page.has_content?("school")
    end
    refute page.has_content?("work")
  end
end
