require "application_system_test_case"

class EvenementsPeopleTest < ApplicationSystemTestCase
  setup do
    @evenements_person = evenements_people(:one)
  end

  test "visiting the index" do
    visit evenements_people_url
    assert_selector "h1", text: "Evenements people"
  end

  test "should create evenements person" do
    visit evenements_people_url
    click_on "New evenements person"

    fill_in "Name", with: @evenements_person.name
    click_on "Create Evenements person"

    assert_text "Evenements person was successfully created"
    click_on "Back"
  end

  test "should update Evenements person" do
    visit evenements_person_url(@evenements_person)
    click_on "Edit this evenements person", match: :first

    fill_in "Name", with: @evenements_person.name
    click_on "Update Evenements person"

    assert_text "Evenements person was successfully updated"
    click_on "Back"
  end

  test "should destroy Evenements person" do
    visit evenements_person_url(@evenements_person)
    click_on "Destroy this evenements person", match: :first

    assert_text "Evenements person was successfully destroyed"
  end
end
