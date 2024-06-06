require "application_system_test_case"

class PersonnalitesIdTravauxesTest < ApplicationSystemTestCase
  setup do
    @_personnalites_id_travaux = _personnalites_id_travauxes(:one)
  end

  test "visiting the index" do
    visit _personnalites_id_travauxes_url
    assert_selector "h1", text: "Personnalites id travauxes"
  end

  test "should create personnalites id travaux" do
    visit _personnalites_id_travauxes_url
    click_on "New personnalites id travaux"

    fill_in "Name", with: @_personnalites_id_travaux.name
    click_on "Create Personnalites id travaux"

    assert_text "Personnalites id travaux was successfully created"
    click_on "Back"
  end

  test "should update Personnalites id travaux" do
    visit _personnalites_id_travaux_url(@_personnalites_id_travaux)
    click_on "Edit this personnalites id travaux", match: :first

    fill_in "Name", with: @_personnalites_id_travaux.name
    click_on "Update Personnalites id travaux"

    assert_text "Personnalites id travaux was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnalites id travaux" do
    visit _personnalites_id_travaux_url(@_personnalites_id_travaux)
    click_on "Destroy this personnalites id travaux", match: :first

    assert_text "Personnalites id travaux was successfully destroyed"
  end
end
