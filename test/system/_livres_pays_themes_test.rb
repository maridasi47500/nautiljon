require "application_system_test_case"

class LivresPaysThemesTest < ApplicationSystemTestCase
  setup do
    @_livres_pays_theme = _livres_pays_themes(:one)
  end

  test "visiting the index" do
    visit _livres_pays_themes_url
    assert_selector "h1", text: "Livres pays themes"
  end

  test "should create livres pays theme" do
    visit _livres_pays_themes_url
    click_on "New livres pays theme"

    fill_in "Name", with: @_livres_pays_theme.name
    click_on "Create Livres pays theme"

    assert_text "Livres pays theme was successfully created"
    click_on "Back"
  end

  test "should update Livres pays theme" do
    visit _livres_pays_theme_url(@_livres_pays_theme)
    click_on "Edit this livres pays theme", match: :first

    fill_in "Name", with: @_livres_pays_theme.name
    click_on "Update Livres pays theme"

    assert_text "Livres pays theme was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres pays theme" do
    visit _livres_pays_theme_url(@_livres_pays_theme)
    click_on "Destroy this livres pays theme", match: :first

    assert_text "Livres pays theme was successfully destroyed"
  end
end
