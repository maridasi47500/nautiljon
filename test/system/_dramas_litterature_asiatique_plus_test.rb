require "application_system_test_case"

class DramasLitteratureAsiatiquePlusTest < ApplicationSystemTestCase
  setup do
    @_dramas_litterature_asiatique_plu = _dramas_litterature_asiatique_plus(:one)
  end

  test "visiting the index" do
    visit _dramas_litterature_asiatique_plus_url
    assert_selector "h1", text: "Dramas litterature asiatique plus"
  end

  test "should create dramas litterature asiatique plu" do
    visit _dramas_litterature_asiatique_plus_url
    click_on "New dramas litterature asiatique plu"

    fill_in "Name", with: @_dramas_litterature_asiatique_plu.name
    click_on "Create Dramas litterature asiatique plu"

    assert_text "Dramas litterature asiatique plu was successfully created"
    click_on "Back"
  end

  test "should update Dramas litterature asiatique plu" do
    visit _dramas_litterature_asiatique_plu_url(@_dramas_litterature_asiatique_plu)
    click_on "Edit this dramas litterature asiatique plu", match: :first

    fill_in "Name", with: @_dramas_litterature_asiatique_plu.name
    click_on "Update Dramas litterature asiatique plu"

    assert_text "Dramas litterature asiatique plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas litterature asiatique plu" do
    visit _dramas_litterature_asiatique_plu_url(@_dramas_litterature_asiatique_plu)
    click_on "Destroy this dramas litterature asiatique plu", match: :first

    assert_text "Dramas litterature asiatique plu was successfully destroyed"
  end
end
