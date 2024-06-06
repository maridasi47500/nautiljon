require "application_system_test_case"

class MangasThemesTest < ApplicationSystemTestCase
  setup do
    @_mangas_theme = _mangas_themes(:one)
  end

  test "visiting the index" do
    visit _mangas_themes_url
    assert_selector "h1", text: "Mangas themes"
  end

  test "should create mangas theme" do
    visit _mangas_themes_url
    click_on "New mangas theme"

    fill_in "Name", with: @_mangas_theme.name
    click_on "Create Mangas theme"

    assert_text "Mangas theme was successfully created"
    click_on "Back"
  end

  test "should update Mangas theme" do
    visit _mangas_theme_url(@_mangas_theme)
    click_on "Edit this mangas theme", match: :first

    fill_in "Name", with: @_mangas_theme.name
    click_on "Update Mangas theme"

    assert_text "Mangas theme was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas theme" do
    visit _mangas_theme_url(@_mangas_theme)
    click_on "Destroy this mangas theme", match: :first

    assert_text "Mangas theme was successfully destroyed"
  end
end
