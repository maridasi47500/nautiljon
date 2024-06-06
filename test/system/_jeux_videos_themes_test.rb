require "application_system_test_case"

class JeuxVideosThemesTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_theme = _jeux_videos_themes(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_themes_url
    assert_selector "h1", text: "Jeux videos themes"
  end

  test "should create jeux videos theme" do
    visit _jeux_videos_themes_url
    click_on "New jeux videos theme"

    fill_in "Name", with: @_jeux_videos_theme.name
    click_on "Create Jeux videos theme"

    assert_text "Jeux videos theme was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos theme" do
    visit _jeux_videos_theme_url(@_jeux_videos_theme)
    click_on "Edit this jeux videos theme", match: :first

    fill_in "Name", with: @_jeux_videos_theme.name
    click_on "Update Jeux videos theme"

    assert_text "Jeux videos theme was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos theme" do
    visit _jeux_videos_theme_url(@_jeux_videos_theme)
    click_on "Destroy this jeux videos theme", match: :first

    assert_text "Jeux videos theme was successfully destroyed"
  end
end
