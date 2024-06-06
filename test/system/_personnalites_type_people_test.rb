require "application_system_test_case"

class PersonnalitesTypePeopleTest < ApplicationSystemTestCase
  setup do
    @_personnalites_type_person = _personnalites_type_people(:one)
  end

  test "visiting the index" do
    visit _personnalites_type_people_url
    assert_selector "h1", text: "Personnalites type people"
  end

  test "should create personnalites type person" do
    visit _personnalites_type_people_url
    click_on "New personnalites type person"

    fill_in "Name", with: @_personnalites_type_person.name
    click_on "Create Personnalites type person"

    assert_text "Personnalites type person was successfully created"
    click_on "Back"
  end

  test "should update Personnalites type person" do
    visit _personnalites_type_person_url(@_personnalites_type_person)
    click_on "Edit this personnalites type person", match: :first

    fill_in "Name", with: @_personnalites_type_person.name
    click_on "Update Personnalites type person"

    assert_text "Personnalites type person was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnalites type person" do
    visit _personnalites_type_person_url(@_personnalites_type_person)
    click_on "Destroy this personnalites type person", match: :first

    assert_text "Personnalites type person was successfully destroyed"
  end
end
