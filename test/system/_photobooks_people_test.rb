require "application_system_test_case"

class PhotobooksPeopleTest < ApplicationSystemTestCase
  setup do
    @_photobooks_person = _photobooks_people(:one)
  end

  test "visiting the index" do
    visit _photobooks_people_url
    assert_selector "h1", text: "Photobooks people"
  end

  test "should create photobooks person" do
    visit _photobooks_people_url
    click_on "New photobooks person"

    fill_in "Name", with: @_photobooks_person.name
    click_on "Create Photobooks person"

    assert_text "Photobooks person was successfully created"
    click_on "Back"
  end

  test "should update Photobooks person" do
    visit _photobooks_person_url(@_photobooks_person)
    click_on "Edit this photobooks person", match: :first

    fill_in "Name", with: @_photobooks_person.name
    click_on "Update Photobooks person"

    assert_text "Photobooks person was successfully updated"
    click_on "Back"
  end

  test "should destroy Photobooks person" do
    visit _photobooks_person_url(@_photobooks_person)
    click_on "Destroy this photobooks person", match: :first

    assert_text "Photobooks person was successfully destroyed"
  end
end
