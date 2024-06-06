require "application_system_test_case"

class PersonnalitesStatutsTest < ApplicationSystemTestCase
  setup do
    @_personnalites_statut = _personnalites_statuts(:one)
  end

  test "visiting the index" do
    visit _personnalites_statuts_url
    assert_selector "h1", text: "Personnalites statuts"
  end

  test "should create personnalites statut" do
    visit _personnalites_statuts_url
    click_on "New personnalites statut"

    fill_in "Name", with: @_personnalites_statut.name
    click_on "Create Personnalites statut"

    assert_text "Personnalites statut was successfully created"
    click_on "Back"
  end

  test "should update Personnalites statut" do
    visit _personnalites_statut_url(@_personnalites_statut)
    click_on "Edit this personnalites statut", match: :first

    fill_in "Name", with: @_personnalites_statut.name
    click_on "Update Personnalites statut"

    assert_text "Personnalites statut was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnalites statut" do
    visit _personnalites_statut_url(@_personnalites_statut)
    click_on "Destroy this personnalites statut", match: :first

    assert_text "Personnalites statut was successfully destroyed"
  end
end
