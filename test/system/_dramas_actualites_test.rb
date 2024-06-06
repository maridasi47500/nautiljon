require "application_system_test_case"

class DramasActualitesTest < ApplicationSystemTestCase
  setup do
    @_dramas_actualite = _dramas_actualites(:one)
  end

  test "visiting the index" do
    visit _dramas_actualites_url
    assert_selector "h1", text: "Dramas actualites"
  end

  test "should create dramas actualite" do
    visit _dramas_actualites_url
    click_on "New dramas actualite"

    fill_in "Name", with: @_dramas_actualite.name
    click_on "Create Dramas actualite"

    assert_text "Dramas actualite was successfully created"
    click_on "Back"
  end

  test "should update Dramas actualite" do
    visit _dramas_actualite_url(@_dramas_actualite)
    click_on "Edit this dramas actualite", match: :first

    fill_in "Name", with: @_dramas_actualite.name
    click_on "Update Dramas actualite"

    assert_text "Dramas actualite was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas actualite" do
    visit _dramas_actualite_url(@_dramas_actualite)
    click_on "Destroy this dramas actualite", match: :first

    assert_text "Dramas actualite was successfully destroyed"
  end
end
