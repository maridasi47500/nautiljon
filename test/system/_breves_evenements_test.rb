require "application_system_test_case"

class BrevesEvenementsTest < ApplicationSystemTestCase
  setup do
    @_breves_evenement = _breves_evenements(:one)
  end

  test "visiting the index" do
    visit _breves_evenements_url
    assert_selector "h1", text: "Breves evenements"
  end

  test "should create breves evenement" do
    visit _breves_evenements_url
    click_on "New breves evenement"

    fill_in "Name", with: @_breves_evenement.name
    click_on "Create Breves evenement"

    assert_text "Breves evenement was successfully created"
    click_on "Back"
  end

  test "should update Breves evenement" do
    visit _breves_evenement_url(@_breves_evenement)
    click_on "Edit this breves evenement", match: :first

    fill_in "Name", with: @_breves_evenement.name
    click_on "Update Breves evenement"

    assert_text "Breves evenement was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves evenement" do
    visit _breves_evenement_url(@_breves_evenement)
    click_on "Destroy this breves evenement", match: :first

    assert_text "Breves evenement was successfully destroyed"
  end
end
