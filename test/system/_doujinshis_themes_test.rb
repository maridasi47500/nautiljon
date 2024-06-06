require "application_system_test_case"

class DoujinshisThemesTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_theme = _doujinshis_themes(:one)
  end

  test "visiting the index" do
    visit _doujinshis_themes_url
    assert_selector "h1", text: "Doujinshis themes"
  end

  test "should create doujinshis theme" do
    visit _doujinshis_themes_url
    click_on "New doujinshis theme"

    fill_in "Name", with: @_doujinshis_theme.name
    click_on "Create Doujinshis theme"

    assert_text "Doujinshis theme was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis theme" do
    visit _doujinshis_theme_url(@_doujinshis_theme)
    click_on "Edit this doujinshis theme", match: :first

    fill_in "Name", with: @_doujinshis_theme.name
    click_on "Update Doujinshis theme"

    assert_text "Doujinshis theme was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis theme" do
    visit _doujinshis_theme_url(@_doujinshis_theme)
    click_on "Destroy this doujinshis theme", match: :first

    assert_text "Doujinshis theme was successfully destroyed"
  end
end
