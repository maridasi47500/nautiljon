require "application_system_test_case"

class PersonnalitesPeopleTest < ApplicationSystemTestCase
  setup do
    @_personnalites_person = _personnalites_people(:one)
  end

  test "visiting the index" do
    visit _personnalites_people_url
    assert_selector "h1", text: "Personnalites people"
  end

  test "should create personnalites person" do
    visit _personnalites_people_url
    click_on "New personnalites person"

    fill_in "Name", with: @_personnalites_person.name
    click_on "Create Personnalites person"

    assert_text "Personnalites person was successfully created"
    click_on "Back"
  end

  test "should update Personnalites person" do
    visit _personnalites_person_url(@_personnalites_person)
    click_on "Edit this personnalites person", match: :first

    fill_in "Name", with: @_personnalites_person.name
    click_on "Update Personnalites person"

    assert_text "Personnalites person was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnalites person" do
    visit _personnalites_person_url(@_personnalites_person)
    click_on "Destroy this personnalites person", match: :first

    assert_text "Personnalites person was successfully destroyed"
  end
end
