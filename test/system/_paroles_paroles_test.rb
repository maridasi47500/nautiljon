require "application_system_test_case"

class ParolesParolesTest < ApplicationSystemTestCase
  setup do
    @_paroles_parole = _paroles_paroles(:one)
  end

  test "visiting the index" do
    visit _paroles_paroles_url
    assert_selector "h1", text: "Paroles paroles"
  end

  test "should create paroles parole" do
    visit _paroles_paroles_url
    click_on "New paroles parole"

    fill_in "Name", with: @_paroles_parole.name
    click_on "Create Paroles parole"

    assert_text "Paroles parole was successfully created"
    click_on "Back"
  end

  test "should update Paroles parole" do
    visit _paroles_parole_url(@_paroles_parole)
    click_on "Edit this paroles parole", match: :first

    fill_in "Name", with: @_paroles_parole.name
    click_on "Update Paroles parole"

    assert_text "Paroles parole was successfully updated"
    click_on "Back"
  end

  test "should destroy Paroles parole" do
    visit _paroles_parole_url(@_paroles_parole)
    click_on "Destroy this paroles parole", match: :first

    assert_text "Paroles parole was successfully destroyed"
  end
end
