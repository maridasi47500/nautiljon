require "application_system_test_case"

class DoujinsPeopleTest < ApplicationSystemTestCase
  setup do
    @_doujins_person = _doujins_people(:one)
  end

  test "visiting the index" do
    visit _doujins_people_url
    assert_selector "h1", text: "Doujins people"
  end

  test "should create doujins person" do
    visit _doujins_people_url
    click_on "New doujins person"

    fill_in "Name", with: @_doujins_person.name
    click_on "Create Doujins person"

    assert_text "Doujins person was successfully created"
    click_on "Back"
  end

  test "should update Doujins person" do
    visit _doujins_person_url(@_doujins_person)
    click_on "Edit this doujins person", match: :first

    fill_in "Name", with: @_doujins_person.name
    click_on "Update Doujins person"

    assert_text "Doujins person was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujins person" do
    visit _doujins_person_url(@_doujins_person)
    click_on "Destroy this doujins person", match: :first

    assert_text "Doujins person was successfully destroyed"
  end
end
