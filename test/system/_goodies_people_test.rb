require "application_system_test_case"

class GoodiesPeopleTest < ApplicationSystemTestCase
  setup do
    @_goodies_person = _goodies_people(:one)
  end

  test "visiting the index" do
    visit _goodies_people_url
    assert_selector "h1", text: "Goodies people"
  end

  test "should create goodies person" do
    visit _goodies_people_url
    click_on "New goodies person"

    fill_in "Name", with: @_goodies_person.name
    click_on "Create Goodies person"

    assert_text "Goodies person was successfully created"
    click_on "Back"
  end

  test "should update Goodies person" do
    visit _goodies_person_url(@_goodies_person)
    click_on "Edit this goodies person", match: :first

    fill_in "Name", with: @_goodies_person.name
    click_on "Update Goodies person"

    assert_text "Goodies person was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies person" do
    visit _goodies_person_url(@_goodies_person)
    click_on "Destroy this goodies person", match: :first

    assert_text "Goodies person was successfully destroyed"
  end
end
