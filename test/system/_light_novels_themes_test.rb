require "application_system_test_case"

class LightNovelsThemesTest < ApplicationSystemTestCase
  setup do
    @_light_novels_theme = _light_novels_themes(:one)
  end

  test "visiting the index" do
    visit _light_novels_themes_url
    assert_selector "h1", text: "Light novels themes"
  end

  test "should create light novels theme" do
    visit _light_novels_themes_url
    click_on "New light novels theme"

    fill_in "Name", with: @_light_novels_theme.name
    click_on "Create Light novels theme"

    assert_text "Light novels theme was successfully created"
    click_on "Back"
  end

  test "should update Light novels theme" do
    visit _light_novels_theme_url(@_light_novels_theme)
    click_on "Edit this light novels theme", match: :first

    fill_in "Name", with: @_light_novels_theme.name
    click_on "Update Light novels theme"

    assert_text "Light novels theme was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels theme" do
    visit _light_novels_theme_url(@_light_novels_theme)
    click_on "Destroy this light novels theme", match: :first

    assert_text "Light novels theme was successfully destroyed"
  end
end
