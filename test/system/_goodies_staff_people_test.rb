require "application_system_test_case"

class GoodiesStaffPeopleTest < ApplicationSystemTestCase
  setup do
    @_goodies_staff_person = _goodies_staff_people(:one)
  end

  test "visiting the index" do
    visit _goodies_staff_people_url
    assert_selector "h1", text: "Goodies staff people"
  end

  test "should create goodies staff person" do
    visit _goodies_staff_people_url
    click_on "New goodies staff person"

    fill_in "Name", with: @_goodies_staff_person.name
    click_on "Create Goodies staff person"

    assert_text "Goodies staff person was successfully created"
    click_on "Back"
  end

  test "should update Goodies staff person" do
    visit _goodies_staff_person_url(@_goodies_staff_person)
    click_on "Edit this goodies staff person", match: :first

    fill_in "Name", with: @_goodies_staff_person.name
    click_on "Update Goodies staff person"

    assert_text "Goodies staff person was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies staff person" do
    visit _goodies_staff_person_url(@_goodies_staff_person)
    click_on "Destroy this goodies staff person", match: :first

    assert_text "Goodies staff person was successfully destroyed"
  end
end
