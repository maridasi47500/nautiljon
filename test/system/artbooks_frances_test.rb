require "application_system_test_case"

class ArtbooksFrancesTest < ApplicationSystemTestCase
  setup do
    @artbooks_france = artbooks_frances(:one)
  end

  test "visiting the index" do
    visit artbooks_frances_url
    assert_selector "h1", text: "Artbooks frances"
  end

  test "should create artbooks france" do
    visit artbooks_frances_url
    click_on "New artbooks france"

    fill_in "Name", with: @artbooks_france.name
    click_on "Create Artbooks france"

    assert_text "Artbooks france was successfully created"
    click_on "Back"
  end

  test "should update Artbooks france" do
    visit artbooks_france_url(@artbooks_france)
    click_on "Edit this artbooks france", match: :first

    fill_in "Name", with: @artbooks_france.name
    click_on "Update Artbooks france"

    assert_text "Artbooks france was successfully updated"
    click_on "Back"
  end

  test "should destroy Artbooks france" do
    visit artbooks_france_url(@artbooks_france)
    click_on "Destroy this artbooks france", match: :first

    assert_text "Artbooks france was successfully destroyed"
  end
end
