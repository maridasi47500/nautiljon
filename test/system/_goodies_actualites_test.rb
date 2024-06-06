require "application_system_test_case"

class GoodiesActualitesTest < ApplicationSystemTestCase
  setup do
    @_goodies_actualite = _goodies_actualites(:one)
  end

  test "visiting the index" do
    visit _goodies_actualites_url
    assert_selector "h1", text: "Goodies actualites"
  end

  test "should create goodies actualite" do
    visit _goodies_actualites_url
    click_on "New goodies actualite"

    fill_in "Name", with: @_goodies_actualite.name
    click_on "Create Goodies actualite"

    assert_text "Goodies actualite was successfully created"
    click_on "Back"
  end

  test "should update Goodies actualite" do
    visit _goodies_actualite_url(@_goodies_actualite)
    click_on "Edit this goodies actualite", match: :first

    fill_in "Name", with: @_goodies_actualite.name
    click_on "Update Goodies actualite"

    assert_text "Goodies actualite was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies actualite" do
    visit _goodies_actualite_url(@_goodies_actualite)
    click_on "Destroy this goodies actualite", match: :first

    assert_text "Goodies actualite was successfully destroyed"
  end
end
