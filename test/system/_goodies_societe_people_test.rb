require "application_system_test_case"

class GoodiesSocietePeopleTest < ApplicationSystemTestCase
  setup do
    @_goodies_societe_person = _goodies_societe_people(:one)
  end

  test "visiting the index" do
    visit _goodies_societe_people_url
    assert_selector "h1", text: "Goodies societe people"
  end

  test "should create goodies societe person" do
    visit _goodies_societe_people_url
    click_on "New goodies societe person"

    fill_in "Name", with: @_goodies_societe_person.name
    click_on "Create Goodies societe person"

    assert_text "Goodies societe person was successfully created"
    click_on "Back"
  end

  test "should update Goodies societe person" do
    visit _goodies_societe_person_url(@_goodies_societe_person)
    click_on "Edit this goodies societe person", match: :first

    fill_in "Name", with: @_goodies_societe_person.name
    click_on "Update Goodies societe person"

    assert_text "Goodies societe person was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies societe person" do
    visit _goodies_societe_person_url(@_goodies_societe_person)
    click_on "Destroy this goodies societe person", match: :first

    assert_text "Goodies societe person was successfully destroyed"
  end
end
