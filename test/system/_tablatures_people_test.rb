require "application_system_test_case"

class TablaturesPeopleTest < ApplicationSystemTestCase
  setup do
    @_tablatures_person = _tablatures_people(:one)
  end

  test "visiting the index" do
    visit _tablatures_people_url
    assert_selector "h1", text: "Tablatures people"
  end

  test "should create tablatures person" do
    visit _tablatures_people_url
    click_on "New tablatures person"

    fill_in "Name", with: @_tablatures_person.name
    click_on "Create Tablatures person"

    assert_text "Tablatures person was successfully created"
    click_on "Back"
  end

  test "should update Tablatures person" do
    visit _tablatures_person_url(@_tablatures_person)
    click_on "Edit this tablatures person", match: :first

    fill_in "Name", with: @_tablatures_person.name
    click_on "Update Tablatures person"

    assert_text "Tablatures person was successfully updated"
    click_on "Back"
  end

  test "should destroy Tablatures person" do
    visit _tablatures_person_url(@_tablatures_person)
    click_on "Destroy this tablatures person", match: :first

    assert_text "Tablatures person was successfully destroyed"
  end
end
