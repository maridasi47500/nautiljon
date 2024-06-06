require "application_system_test_case"

class DoujinshisLitteratureAsiatiquePlusTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_litterature_asiatique_plu = _doujinshis_litterature_asiatique_plus(:one)
  end

  test "visiting the index" do
    visit _doujinshis_litterature_asiatique_plus_url
    assert_selector "h1", text: "Doujinshis litterature asiatique plus"
  end

  test "should create doujinshis litterature asiatique plu" do
    visit _doujinshis_litterature_asiatique_plus_url
    click_on "New doujinshis litterature asiatique plu"

    fill_in "Name", with: @_doujinshis_litterature_asiatique_plu.name
    click_on "Create Doujinshis litterature asiatique plu"

    assert_text "Doujinshis litterature asiatique plu was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis litterature asiatique plu" do
    visit _doujinshis_litterature_asiatique_plu_url(@_doujinshis_litterature_asiatique_plu)
    click_on "Edit this doujinshis litterature asiatique plu", match: :first

    fill_in "Name", with: @_doujinshis_litterature_asiatique_plu.name
    click_on "Update Doujinshis litterature asiatique plu"

    assert_text "Doujinshis litterature asiatique plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis litterature asiatique plu" do
    visit _doujinshis_litterature_asiatique_plu_url(@_doujinshis_litterature_asiatique_plu)
    click_on "Destroy this doujinshis litterature asiatique plu", match: :first

    assert_text "Doujinshis litterature asiatique plu was successfully destroyed"
  end
end
