require "application_system_test_case"

class LightNovelsLitteratureAsiatiquePlusTest < ApplicationSystemTestCase
  setup do
    @_light_novels_litterature_asiatique_plu = _light_novels_litterature_asiatique_plus(:one)
  end

  test "visiting the index" do
    visit _light_novels_litterature_asiatique_plus_url
    assert_selector "h1", text: "Light novels litterature asiatique plus"
  end

  test "should create light novels litterature asiatique plu" do
    visit _light_novels_litterature_asiatique_plus_url
    click_on "New light novels litterature asiatique plu"

    fill_in "Name", with: @_light_novels_litterature_asiatique_plu.name
    click_on "Create Light novels litterature asiatique plu"

    assert_text "Light novels litterature asiatique plu was successfully created"
    click_on "Back"
  end

  test "should update Light novels litterature asiatique plu" do
    visit _light_novels_litterature_asiatique_plu_url(@_light_novels_litterature_asiatique_plu)
    click_on "Edit this light novels litterature asiatique plu", match: :first

    fill_in "Name", with: @_light_novels_litterature_asiatique_plu.name
    click_on "Update Light novels litterature asiatique plu"

    assert_text "Light novels litterature asiatique plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels litterature asiatique plu" do
    visit _light_novels_litterature_asiatique_plu_url(@_light_novels_litterature_asiatique_plu)
    click_on "Destroy this light novels litterature asiatique plu", match: :first

    assert_text "Light novels litterature asiatique plu was successfully destroyed"
  end
end
