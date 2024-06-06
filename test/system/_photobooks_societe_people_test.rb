require "application_system_test_case"

class PhotobooksSocietePeopleTest < ApplicationSystemTestCase
  setup do
    @_photobooks_societe_person = _photobooks_societe_people(:one)
  end

  test "visiting the index" do
    visit _photobooks_societe_people_url
    assert_selector "h1", text: "Photobooks societe people"
  end

  test "should create photobooks societe person" do
    visit _photobooks_societe_people_url
    click_on "New photobooks societe person"

    fill_in "Name", with: @_photobooks_societe_person.name
    click_on "Create Photobooks societe person"

    assert_text "Photobooks societe person was successfully created"
    click_on "Back"
  end

  test "should update Photobooks societe person" do
    visit _photobooks_societe_person_url(@_photobooks_societe_person)
    click_on "Edit this photobooks societe person", match: :first

    fill_in "Name", with: @_photobooks_societe_person.name
    click_on "Update Photobooks societe person"

    assert_text "Photobooks societe person was successfully updated"
    click_on "Back"
  end

  test "should destroy Photobooks societe person" do
    visit _photobooks_societe_person_url(@_photobooks_societe_person)
    click_on "Destroy this photobooks societe person", match: :first

    assert_text "Photobooks societe person was successfully destroyed"
  end
end
