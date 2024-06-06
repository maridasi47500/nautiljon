require "application_system_test_case"

class DramasStaffPeopleTest < ApplicationSystemTestCase
  setup do
    @_dramas_staff_person = _dramas_staff_people(:one)
  end

  test "visiting the index" do
    visit _dramas_staff_people_url
    assert_selector "h1", text: "Dramas staff people"
  end

  test "should create dramas staff person" do
    visit _dramas_staff_people_url
    click_on "New dramas staff person"

    fill_in "Name", with: @_dramas_staff_person.name
    click_on "Create Dramas staff person"

    assert_text "Dramas staff person was successfully created"
    click_on "Back"
  end

  test "should update Dramas staff person" do
    visit _dramas_staff_person_url(@_dramas_staff_person)
    click_on "Edit this dramas staff person", match: :first

    fill_in "Name", with: @_dramas_staff_person.name
    click_on "Update Dramas staff person"

    assert_text "Dramas staff person was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas staff person" do
    visit _dramas_staff_person_url(@_dramas_staff_person)
    click_on "Destroy this dramas staff person", match: :first

    assert_text "Dramas staff person was successfully destroyed"
  end
end
