require "application_system_test_case"

class GeneriquesStaffPeopleTest < ApplicationSystemTestCase
  setup do
    @_generiques_staff_person = _generiques_staff_people(:one)
  end

  test "visiting the index" do
    visit _generiques_staff_people_url
    assert_selector "h1", text: "Generiques staff people"
  end

  test "should create generiques staff person" do
    visit _generiques_staff_people_url
    click_on "New generiques staff person"

    fill_in "Name", with: @_generiques_staff_person.name
    click_on "Create Generiques staff person"

    assert_text "Generiques staff person was successfully created"
    click_on "Back"
  end

  test "should update Generiques staff person" do
    visit _generiques_staff_person_url(@_generiques_staff_person)
    click_on "Edit this generiques staff person", match: :first

    fill_in "Name", with: @_generiques_staff_person.name
    click_on "Update Generiques staff person"

    assert_text "Generiques staff person was successfully updated"
    click_on "Back"
  end

  test "should destroy Generiques staff person" do
    visit _generiques_staff_person_url(@_generiques_staff_person)
    click_on "Destroy this generiques staff person", match: :first

    assert_text "Generiques staff person was successfully destroyed"
  end
end
