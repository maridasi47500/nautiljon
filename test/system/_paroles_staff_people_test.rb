require "application_system_test_case"

class ParolesStaffPeopleTest < ApplicationSystemTestCase
  setup do
    @_paroles_staff_person = _paroles_staff_people(:one)
  end

  test "visiting the index" do
    visit _paroles_staff_people_url
    assert_selector "h1", text: "Paroles staff people"
  end

  test "should create paroles staff person" do
    visit _paroles_staff_people_url
    click_on "New paroles staff person"

    fill_in "Name", with: @_paroles_staff_person.name
    click_on "Create Paroles staff person"

    assert_text "Paroles staff person was successfully created"
    click_on "Back"
  end

  test "should update Paroles staff person" do
    visit _paroles_staff_person_url(@_paroles_staff_person)
    click_on "Edit this paroles staff person", match: :first

    fill_in "Name", with: @_paroles_staff_person.name
    click_on "Update Paroles staff person"

    assert_text "Paroles staff person was successfully updated"
    click_on "Back"
  end

  test "should destroy Paroles staff person" do
    visit _paroles_staff_person_url(@_paroles_staff_person)
    click_on "Destroy this paroles staff person", match: :first

    assert_text "Paroles staff person was successfully destroyed"
  end
end
