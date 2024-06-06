require "application_system_test_case"

class DramasThemesTest < ApplicationSystemTestCase
  setup do
    @_dramas_theme = _dramas_themes(:one)
  end

  test "visiting the index" do
    visit _dramas_themes_url
    assert_selector "h1", text: "Dramas themes"
  end

  test "should create dramas theme" do
    visit _dramas_themes_url
    click_on "New dramas theme"

    fill_in "Name", with: @_dramas_theme.name
    click_on "Create Dramas theme"

    assert_text "Dramas theme was successfully created"
    click_on "Back"
  end

  test "should update Dramas theme" do
    visit _dramas_theme_url(@_dramas_theme)
    click_on "Edit this dramas theme", match: :first

    fill_in "Name", with: @_dramas_theme.name
    click_on "Update Dramas theme"

    assert_text "Dramas theme was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas theme" do
    visit _dramas_theme_url(@_dramas_theme)
    click_on "Destroy this dramas theme", match: :first

    assert_text "Dramas theme was successfully destroyed"
  end
end
