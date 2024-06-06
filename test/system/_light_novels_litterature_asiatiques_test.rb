require "application_system_test_case"

class LightNovelsLitteratureAsiatiquesTest < ApplicationSystemTestCase
  setup do
    @_light_novels_litterature_asiatique = _light_novels_litterature_asiatiques(:one)
  end

  test "visiting the index" do
    visit _light_novels_litterature_asiatiques_url
    assert_selector "h1", text: "Light novels litterature asiatiques"
  end

  test "should create light novels litterature asiatique" do
    visit _light_novels_litterature_asiatiques_url
    click_on "New light novels litterature asiatique"

    fill_in "Name", with: @_light_novels_litterature_asiatique.name
    click_on "Create Light novels litterature asiatique"

    assert_text "Light novels litterature asiatique was successfully created"
    click_on "Back"
  end

  test "should update Light novels litterature asiatique" do
    visit _light_novels_litterature_asiatique_url(@_light_novels_litterature_asiatique)
    click_on "Edit this light novels litterature asiatique", match: :first

    fill_in "Name", with: @_light_novels_litterature_asiatique.name
    click_on "Update Light novels litterature asiatique"

    assert_text "Light novels litterature asiatique was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels litterature asiatique" do
    visit _light_novels_litterature_asiatique_url(@_light_novels_litterature_asiatique)
    click_on "Destroy this light novels litterature asiatique", match: :first

    assert_text "Light novels litterature asiatique was successfully destroyed"
  end
end
