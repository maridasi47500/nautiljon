require "application_system_test_case"

class PersonnalitesExDebutsTest < ApplicationSystemTestCase
  setup do
    @_personnalites_ex_debut = _personnalites_ex_debuts(:one)
  end

  test "visiting the index" do
    visit _personnalites_ex_debuts_url
    assert_selector "h1", text: "Personnalites ex debuts"
  end

  test "should create personnalites ex debut" do
    visit _personnalites_ex_debuts_url
    click_on "New personnalites ex debut"

    fill_in "Name", with: @_personnalites_ex_debut.name
    click_on "Create Personnalites ex debut"

    assert_text "Personnalites ex debut was successfully created"
    click_on "Back"
  end

  test "should update Personnalites ex debut" do
    visit _personnalites_ex_debut_url(@_personnalites_ex_debut)
    click_on "Edit this personnalites ex debut", match: :first

    fill_in "Name", with: @_personnalites_ex_debut.name
    click_on "Update Personnalites ex debut"

    assert_text "Personnalites ex debut was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnalites ex debut" do
    visit _personnalites_ex_debut_url(@_personnalites_ex_debut)
    click_on "Destroy this personnalites ex debut", match: :first

    assert_text "Personnalites ex debut was successfully destroyed"
  end
end
