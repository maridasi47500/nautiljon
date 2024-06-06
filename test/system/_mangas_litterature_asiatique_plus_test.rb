require "application_system_test_case"

class MangasLitteratureAsiatiquePlusTest < ApplicationSystemTestCase
  setup do
    @_mangas_litterature_asiatique_plu = _mangas_litterature_asiatique_plus(:one)
  end

  test "visiting the index" do
    visit _mangas_litterature_asiatique_plus_url
    assert_selector "h1", text: "Mangas litterature asiatique plus"
  end

  test "should create mangas litterature asiatique plu" do
    visit _mangas_litterature_asiatique_plus_url
    click_on "New mangas litterature asiatique plu"

    fill_in "Name", with: @_mangas_litterature_asiatique_plu.name
    click_on "Create Mangas litterature asiatique plu"

    assert_text "Mangas litterature asiatique plu was successfully created"
    click_on "Back"
  end

  test "should update Mangas litterature asiatique plu" do
    visit _mangas_litterature_asiatique_plu_url(@_mangas_litterature_asiatique_plu)
    click_on "Edit this mangas litterature asiatique plu", match: :first

    fill_in "Name", with: @_mangas_litterature_asiatique_plu.name
    click_on "Update Mangas litterature asiatique plu"

    assert_text "Mangas litterature asiatique plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Mangas litterature asiatique plu" do
    visit _mangas_litterature_asiatique_plu_url(@_mangas_litterature_asiatique_plu)
    click_on "Destroy this mangas litterature asiatique plu", match: :first

    assert_text "Mangas litterature asiatique plu was successfully destroyed"
  end
end
