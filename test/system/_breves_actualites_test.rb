require "application_system_test_case"

class BrevesActualitesTest < ApplicationSystemTestCase
  setup do
    @_breves_actualite = _breves_actualites(:one)
  end

  test "visiting the index" do
    visit _breves_actualites_url
    assert_selector "h1", text: "Breves actualites"
  end

  test "should create breves actualite" do
    visit _breves_actualites_url
    click_on "New breves actualite"

    fill_in "Name", with: @_breves_actualite.name
    click_on "Create Breves actualite"

    assert_text "Breves actualite was successfully created"
    click_on "Back"
  end

  test "should update Breves actualite" do
    visit _breves_actualite_url(@_breves_actualite)
    click_on "Edit this breves actualite", match: :first

    fill_in "Name", with: @_breves_actualite.name
    click_on "Update Breves actualite"

    assert_text "Breves actualite was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves actualite" do
    visit _breves_actualite_url(@_breves_actualite)
    click_on "Destroy this breves actualite", match: :first

    assert_text "Breves actualite was successfully destroyed"
  end
end
