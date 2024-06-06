require "application_system_test_case"

class PhotobooksDisponibilitesTest < ApplicationSystemTestCase
  setup do
    @_photobooks_disponibilite = _photobooks_disponibilites(:one)
  end

  test "visiting the index" do
    visit _photobooks_disponibilites_url
    assert_selector "h1", text: "Photobooks disponibilites"
  end

  test "should create photobooks disponibilite" do
    visit _photobooks_disponibilites_url
    click_on "New photobooks disponibilite"

    fill_in "Name", with: @_photobooks_disponibilite.name
    click_on "Create Photobooks disponibilite"

    assert_text "Photobooks disponibilite was successfully created"
    click_on "Back"
  end

  test "should update Photobooks disponibilite" do
    visit _photobooks_disponibilite_url(@_photobooks_disponibilite)
    click_on "Edit this photobooks disponibilite", match: :first

    fill_in "Name", with: @_photobooks_disponibilite.name
    click_on "Update Photobooks disponibilite"

    assert_text "Photobooks disponibilite was successfully updated"
    click_on "Back"
  end

  test "should destroy Photobooks disponibilite" do
    visit _photobooks_disponibilite_url(@_photobooks_disponibilite)
    click_on "Destroy this photobooks disponibilite", match: :first

    assert_text "Photobooks disponibilite was successfully destroyed"
  end
end
