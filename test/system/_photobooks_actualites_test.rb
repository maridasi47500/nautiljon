require "application_system_test_case"

class PhotobooksActualitesTest < ApplicationSystemTestCase
  setup do
    @_photobooks_actualite = _photobooks_actualites(:one)
  end

  test "visiting the index" do
    visit _photobooks_actualites_url
    assert_selector "h1", text: "Photobooks actualites"
  end

  test "should create photobooks actualite" do
    visit _photobooks_actualites_url
    click_on "New photobooks actualite"

    fill_in "Name", with: @_photobooks_actualite.name
    click_on "Create Photobooks actualite"

    assert_text "Photobooks actualite was successfully created"
    click_on "Back"
  end

  test "should update Photobooks actualite" do
    visit _photobooks_actualite_url(@_photobooks_actualite)
    click_on "Edit this photobooks actualite", match: :first

    fill_in "Name", with: @_photobooks_actualite.name
    click_on "Update Photobooks actualite"

    assert_text "Photobooks actualite was successfully updated"
    click_on "Back"
  end

  test "should destroy Photobooks actualite" do
    visit _photobooks_actualite_url(@_photobooks_actualite)
    click_on "Destroy this photobooks actualite", match: :first

    assert_text "Photobooks actualite was successfully destroyed"
  end
end
