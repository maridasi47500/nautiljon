require "application_system_test_case"

class PersonnalitesAgencesTest < ApplicationSystemTestCase
  setup do
    @_personnalites_agence = _personnalites_agences(:one)
  end

  test "visiting the index" do
    visit _personnalites_agences_url
    assert_selector "h1", text: "Personnalites agences"
  end

  test "should create personnalites agence" do
    visit _personnalites_agences_url
    click_on "New personnalites agence"

    fill_in "Name", with: @_personnalites_agence.name
    click_on "Create Personnalites agence"

    assert_text "Personnalites agence was successfully created"
    click_on "Back"
  end

  test "should update Personnalites agence" do
    visit _personnalites_agence_url(@_personnalites_agence)
    click_on "Edit this personnalites agence", match: :first

    fill_in "Name", with: @_personnalites_agence.name
    click_on "Update Personnalites agence"

    assert_text "Personnalites agence was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnalites agence" do
    visit _personnalites_agence_url(@_personnalites_agence)
    click_on "Destroy this personnalites agence", match: :first

    assert_text "Personnalites agence was successfully destroyed"
  end
end
