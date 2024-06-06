require "application_system_test_case"

class LivresThemesTest < ApplicationSystemTestCase
  setup do
    @_livres_theme = _livres_themes(:one)
  end

  test "visiting the index" do
    visit _livres_themes_url
    assert_selector "h1", text: "Livres themes"
  end

  test "should create livres theme" do
    visit _livres_themes_url
    click_on "New livres theme"

    fill_in "Name", with: @_livres_theme.name
    click_on "Create Livres theme"

    assert_text "Livres theme was successfully created"
    click_on "Back"
  end

  test "should update Livres theme" do
    visit _livres_theme_url(@_livres_theme)
    click_on "Edit this livres theme", match: :first

    fill_in "Name", with: @_livres_theme.name
    click_on "Update Livres theme"

    assert_text "Livres theme was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres theme" do
    visit _livres_theme_url(@_livres_theme)
    click_on "Destroy this livres theme", match: :first

    assert_text "Livres theme was successfully destroyed"
  end
end
