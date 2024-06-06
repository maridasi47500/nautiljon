require "application_system_test_case"

class BrevesSocietesTest < ApplicationSystemTestCase
  setup do
    @_breves_societe = _breves_societes(:one)
  end

  test "visiting the index" do
    visit _breves_societes_url
    assert_selector "h1", text: "Breves societes"
  end

  test "should create breves societe" do
    visit _breves_societes_url
    click_on "New breves societe"

    fill_in "Name", with: @_breves_societe.name
    click_on "Create Breves societe"

    assert_text "Breves societe was successfully created"
    click_on "Back"
  end

  test "should update Breves societe" do
    visit _breves_societe_url(@_breves_societe)
    click_on "Edit this breves societe", match: :first

    fill_in "Name", with: @_breves_societe.name
    click_on "Update Breves societe"

    assert_text "Breves societe was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves societe" do
    visit _breves_societe_url(@_breves_societe)
    click_on "Destroy this breves societe", match: :first

    assert_text "Breves societe was successfully destroyed"
  end
end
