require "application_system_test_case"

class PersonnalitesAgencesFinsTest < ApplicationSystemTestCase
  setup do
    @_personnalites_agences_fin = _personnalites_agences_fins(:one)
  end

  test "visiting the index" do
    visit _personnalites_agences_fins_url
    assert_selector "h1", text: "Personnalites agences fins"
  end

  test "should create personnalites agences fin" do
    visit _personnalites_agences_fins_url
    click_on "New personnalites agences fin"

    fill_in "Name", with: @_personnalites_agences_fin.name
    click_on "Create Personnalites agences fin"

    assert_text "Personnalites agences fin was successfully created"
    click_on "Back"
  end

  test "should update Personnalites agences fin" do
    visit _personnalites_agences_fin_url(@_personnalites_agences_fin)
    click_on "Edit this personnalites agences fin", match: :first

    fill_in "Name", with: @_personnalites_agences_fin.name
    click_on "Update Personnalites agences fin"

    assert_text "Personnalites agences fin was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnalites agences fin" do
    visit _personnalites_agences_fin_url(@_personnalites_agences_fin)
    click_on "Destroy this personnalites agences fin", match: :first

    assert_text "Personnalites agences fin was successfully destroyed"
  end
end
