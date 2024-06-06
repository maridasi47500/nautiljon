require "application_system_test_case"

class LivresStaffPeopleTest < ApplicationSystemTestCase
  setup do
    @_livres_staff_person = _livres_staff_people(:one)
  end

  test "visiting the index" do
    visit _livres_staff_people_url
    assert_selector "h1", text: "Livres staff people"
  end

  test "should create livres staff person" do
    visit _livres_staff_people_url
    click_on "New livres staff person"

    fill_in "Name", with: @_livres_staff_person.name
    click_on "Create Livres staff person"

    assert_text "Livres staff person was successfully created"
    click_on "Back"
  end

  test "should update Livres staff person" do
    visit _livres_staff_person_url(@_livres_staff_person)
    click_on "Edit this livres staff person", match: :first

    fill_in "Name", with: @_livres_staff_person.name
    click_on "Update Livres staff person"

    assert_text "Livres staff person was successfully updated"
    click_on "Back"
  end

  test "should destroy Livres staff person" do
    visit _livres_staff_person_url(@_livres_staff_person)
    click_on "Destroy this livres staff person", match: :first

    assert_text "Livres staff person was successfully destroyed"
  end
end
