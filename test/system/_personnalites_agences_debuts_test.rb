require "application_system_test_case"

class PersonnalitesAgencesDebutsTest < ApplicationSystemTestCase
  setup do
    @_personnalites_agences_debut = _personnalites_agences_debuts(:one)
  end

  test "visiting the index" do
    visit _personnalites_agences_debuts_url
    assert_selector "h1", text: "Personnalites agences debuts"
  end

  test "should create personnalites agences debut" do
    visit _personnalites_agences_debuts_url
    click_on "New personnalites agences debut"

    fill_in "Name", with: @_personnalites_agences_debut.name
    click_on "Create Personnalites agences debut"

    assert_text "Personnalites agences debut was successfully created"
    click_on "Back"
  end

  test "should update Personnalites agences debut" do
    visit _personnalites_agences_debut_url(@_personnalites_agences_debut)
    click_on "Edit this personnalites agences debut", match: :first

    fill_in "Name", with: @_personnalites_agences_debut.name
    click_on "Update Personnalites agences debut"

    assert_text "Personnalites agences debut was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnalites agences debut" do
    visit _personnalites_agences_debut_url(@_personnalites_agences_debut)
    click_on "Destroy this personnalites agences debut", match: :first

    assert_text "Personnalites agences debut was successfully destroyed"
  end
end
