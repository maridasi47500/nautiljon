require "application_system_test_case"

class LivresLitteratureAsiatiquePlusTest < ApplicationSystemTestCase
  setup do
    @_livres_litterature_asiatique_plu = _livres_litterature_asiatique_plus(:one)
  end

  test "visiting the index" do
    visit _livres_litterature_asiatique_plus_url
    assert_selector "h1", text: "Livres litterature asiatique plus"
  end

  test "should create livres litterature asiatique plu" do
    visit _livres_litterature_asiatique_plus_url
    click_on "New livres litterature asiatique plu"

    fill_in "Name", with: @_livres_litterature_asiatique_plu.name
    click_on "Create Livres litterature asiatique plu"

    assert_text "Livres litterature asiatique plu was successfully created"
    click_on "Back"
  end

  test "should update Livres litterature asiatique plu" do
    visit _livres_litterature_asiatique_plu_url(@_livres_litterature_asiatique_plu)
    click_on "Edit this livres litterature asiatique plu", match: :first

    fill_in "Name", with: @_livres_litterature_asiatique_plu.name
    click_on "Update Livres litterature asiatique plu"

    assert_text "Livres litterature asiatique plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres litterature asiatique plu" do
    visit _livres_litterature_asiatique_plu_url(@_livres_litterature_asiatique_plu)
    click_on "Destroy this livres litterature asiatique plu", match: :first

    assert_text "Livres litterature asiatique plu was successfully destroyed"
  end
end
