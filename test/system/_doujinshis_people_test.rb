require "application_system_test_case"

class DoujinshisPeopleTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_person = _doujinshis_people(:one)
  end

  test "visiting the index" do
    visit _doujinshis_people_url
    assert_selector "h1", text: "Doujinshis people"
  end

  test "should create doujinshis person" do
    visit _doujinshis_people_url
    click_on "New doujinshis person"

    fill_in "Name", with: @_doujinshis_person.name
    click_on "Create Doujinshis person"

    assert_text "Doujinshis person was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis person" do
    visit _doujinshis_person_url(@_doujinshis_person)
    click_on "Edit this doujinshis person", match: :first

    fill_in "Name", with: @_doujinshis_person.name
    click_on "Update Doujinshis person"

    assert_text "Doujinshis person was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis person" do
    visit _doujinshis_person_url(@_doujinshis_person)
    click_on "Destroy this doujinshis person", match: :first

    assert_text "Doujinshis person was successfully destroyed"
  end
end
