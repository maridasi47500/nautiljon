require "application_system_test_case"

class FicheUniversLitteratureAsiatiquesTest < ApplicationSystemTestCase
  setup do
    @_fiche_univers_litterature_asiatique = _fiche_univers_litterature_asiatiques(:one)
  end

  test "visiting the index" do
    visit _fiche_univers_litterature_asiatiques_url
    assert_selector "h1", text: "Fiche univers litterature asiatiques"
  end

  test "should create fiche univers litterature asiatique" do
    visit _fiche_univers_litterature_asiatiques_url
    click_on "New fiche univers litterature asiatique"

    fill_in "Name", with: @_fiche_univers_litterature_asiatique.name
    click_on "Create Fiche univers litterature asiatique"

    assert_text "Fiche univers litterature asiatique was successfully created"
    click_on "Back"
  end

  test "should update Fiche univers litterature asiatique" do
    visit _fiche_univers_litterature_asiatique_url(@_fiche_univers_litterature_asiatique)
    click_on "Edit this fiche univers litterature asiatique", match: :first

    fill_in "Name", with: @_fiche_univers_litterature_asiatique.name
    click_on "Update Fiche univers litterature asiatique"

    assert_text "Fiche univers litterature asiatique was successfully updated"
    click_on "Back"
  end

  test "should destroy Fiche univers litterature asiatique" do
    visit _fiche_univers_litterature_asiatique_url(@_fiche_univers_litterature_asiatique)
    click_on "Destroy this fiche univers litterature asiatique", match: :first

    assert_text "Fiche univers litterature asiatique was successfully destroyed"
  end
end
