require "application_system_test_case"

class LightNovelsActualitesTest < ApplicationSystemTestCase
  setup do
    @_light_novels_actualite = _light_novels_actualites(:one)
  end

  test "visiting the index" do
    visit _light_novels_actualites_url
    assert_selector "h1", text: "Light novels actualites"
  end

  test "should create light novels actualite" do
    visit _light_novels_actualites_url
    click_on "New light novels actualite"

    fill_in "Name", with: @_light_novels_actualite.name
    click_on "Create Light novels actualite"

    assert_text "Light novels actualite was successfully created"
    click_on "Back"
  end

  test "should update Light novels actualite" do
    visit _light_novels_actualite_url(@_light_novels_actualite)
    click_on "Edit this light novels actualite", match: :first

    fill_in "Name", with: @_light_novels_actualite.name
    click_on "Update Light novels actualite"

    assert_text "Light novels actualite was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels actualite" do
    visit _light_novels_actualite_url(@_light_novels_actualite)
    click_on "Destroy this light novels actualite", match: :first

    assert_text "Light novels actualite was successfully destroyed"
  end
end
