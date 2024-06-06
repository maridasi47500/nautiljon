require "application_system_test_case"

class BrevesPeopleTest < ApplicationSystemTestCase
  setup do
    @_breves_person = _breves_people(:one)
  end

  test "visiting the index" do
    visit _breves_people_url
    assert_selector "h1", text: "Breves people"
  end

  test "should create breves person" do
    visit _breves_people_url
    click_on "New breves person"

    fill_in "Name", with: @_breves_person.name
    click_on "Create Breves person"

    assert_text "Breves person was successfully created"
    click_on "Back"
  end

  test "should update Breves person" do
    visit _breves_person_url(@_breves_person)
    click_on "Edit this breves person", match: :first

    fill_in "Name", with: @_breves_person.name
    click_on "Update Breves person"

    assert_text "Breves person was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves person" do
    visit _breves_person_url(@_breves_person)
    click_on "Destroy this breves person", match: :first

    assert_text "Breves person was successfully destroyed"
  end
end
