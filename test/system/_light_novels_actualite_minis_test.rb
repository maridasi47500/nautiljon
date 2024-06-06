require "application_system_test_case"

class LightNovelsActualiteMinisTest < ApplicationSystemTestCase
  setup do
    @_light_novels_actualite_mini = _light_novels_actualite_minis(:one)
  end

  test "visiting the index" do
    visit _light_novels_actualite_minis_url
    assert_selector "h1", text: "Light novels actualite minis"
  end

  test "should create light novels actualite mini" do
    visit _light_novels_actualite_minis_url
    click_on "New light novels actualite mini"

    fill_in "Name", with: @_light_novels_actualite_mini.name
    click_on "Create Light novels actualite mini"

    assert_text "Light novels actualite mini was successfully created"
    click_on "Back"
  end

  test "should update Light novels actualite mini" do
    visit _light_novels_actualite_mini_url(@_light_novels_actualite_mini)
    click_on "Edit this light novels actualite mini", match: :first

    fill_in "Name", with: @_light_novels_actualite_mini.name
    click_on "Update Light novels actualite mini"

    assert_text "Light novels actualite mini was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels actualite mini" do
    visit _light_novels_actualite_mini_url(@_light_novels_actualite_mini)
    click_on "Destroy this light novels actualite mini", match: :first

    assert_text "Light novels actualite mini was successfully destroyed"
  end
end
