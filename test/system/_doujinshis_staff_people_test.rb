require "application_system_test_case"

class DoujinshisStaffPeopleTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_staff_person = _doujinshis_staff_people(:one)
  end

  test "visiting the index" do
    visit _doujinshis_staff_people_url
    assert_selector "h1", text: "Doujinshis staff people"
  end

  test "should create doujinshis staff person" do
    visit _doujinshis_staff_people_url
    click_on "New doujinshis staff person"

    fill_in "Name", with: @_doujinshis_staff_person.name
    click_on "Create Doujinshis staff person"

    assert_text "Doujinshis staff person was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis staff person" do
    visit _doujinshis_staff_person_url(@_doujinshis_staff_person)
    click_on "Edit this doujinshis staff person", match: :first

    fill_in "Name", with: @_doujinshis_staff_person.name
    click_on "Update Doujinshis staff person"

    assert_text "Doujinshis staff person was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis staff person" do
    visit _doujinshis_staff_person_url(@_doujinshis_staff_person)
    click_on "Destroy this doujinshis staff person", match: :first

    assert_text "Doujinshis staff person was successfully destroyed"
  end
end
