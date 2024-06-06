require "application_system_test_case"

class PersonnalitesAgencesexesTest < ApplicationSystemTestCase
  setup do
    @_personnalites_agences_ex = _personnalites_agences_exes(:one)
  end

  test "visiting the index" do
    visit _personnalites_agences_exes_url
    assert_selector "h1", text: "Personnalites agences exes"
  end

  test "should create personnalites agences ex" do
    visit _personnalites_agences_exes_url
    click_on "New personnalites agences ex"

    fill_in "Name", with: @_personnalites_agences_ex.name
    click_on "Create Personnalites agences ex"

    assert_text "Personnalites agences ex was successfully created"
    click_on "Back"
  end

  test "should update Personnalites agences ex" do
    visit _personnalites_agences_ex_url(@_personnalites_agences_ex)
    click_on "Edit this personnalites agences ex", match: :first

    fill_in "Name", with: @_personnalites_agences_ex.name
    click_on "Update Personnalites agences ex"

    assert_text "Personnalites agences ex was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnalites agences ex" do
    visit _personnalites_agences_ex_url(@_personnalites_agences_ex)
    click_on "Destroy this personnalites agences ex", match: :first

    assert_text "Personnalites agences ex was successfully destroyed"
  end
end
