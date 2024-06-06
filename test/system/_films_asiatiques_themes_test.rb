require "application_system_test_case"

class FilmsAsiatiquesThemesTest < ApplicationSystemTestCase
  setup do
    @_films_asiatiques_theme = _films_asiatiques_themes(:one)
  end

  test "visiting the index" do
    visit _films_asiatiques_themes_url
    assert_selector "h1", text: "Films asiatiques themes"
  end

  test "should create films asiatiques theme" do
    visit _films_asiatiques_themes_url
    click_on "New films asiatiques theme"

    fill_in "Name", with: @_films_asiatiques_theme.name
    click_on "Create Films asiatiques theme"

    assert_text "Films asiatiques theme was successfully created"
    click_on "Back"
  end

  test "should update Films asiatiques theme" do
    visit _films_asiatiques_theme_url(@_films_asiatiques_theme)
    click_on "Edit this films asiatiques theme", match: :first

    fill_in "Name", with: @_films_asiatiques_theme.name
    click_on "Update Films asiatiques theme"

    assert_text "Films asiatiques theme was successfully updated"
    click_on "Back"
  end

  test "should destroy Films asiatiques theme" do
    visit _films_asiatiques_theme_url(@_films_asiatiques_theme)
    click_on "Destroy this films asiatiques theme", match: :first

    assert_text "Films asiatiques theme was successfully destroyed"
  end
end
