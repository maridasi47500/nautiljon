require "application_system_test_case"

class AnimesThemesTest < ApplicationSystemTestCase
  setup do
    @animes_theme = animes_themes(:one)
  end

  test "visiting the index" do
    visit animes_themes_url
    assert_selector "h1", text: "Animes themes"
  end

  test "should create animes theme" do
    visit animes_themes_url
    click_on "New animes theme"

    fill_in "Name", with: @animes_theme.name
    click_on "Create Animes theme"

    assert_text "Animes theme was successfully created"
    click_on "Back"
  end

  test "should update Animes theme" do
    visit animes_theme_url(@animes_theme)
    click_on "Edit this animes theme", match: :first

    fill_in "Name", with: @animes_theme.name
    click_on "Update Animes theme"

    assert_text "Animes theme was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes theme" do
    visit animes_theme_url(@animes_theme)
    click_on "Destroy this animes theme", match: :first

    assert_text "Animes theme was successfully destroyed"
  end
end
