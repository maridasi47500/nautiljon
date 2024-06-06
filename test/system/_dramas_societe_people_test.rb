require "application_system_test_case"

class DramasSocietePeopleTest < ApplicationSystemTestCase
  setup do
    @_dramas_societe_person = _dramas_societe_people(:one)
  end

  test "visiting the index" do
    visit _dramas_societe_people_url
    assert_selector "h1", text: "Dramas societe people"
  end

  test "should create dramas societe person" do
    visit _dramas_societe_people_url
    click_on "New dramas societe person"

    fill_in "Name", with: @_dramas_societe_person.name
    click_on "Create Dramas societe person"

    assert_text "Dramas societe person was successfully created"
    click_on "Back"
  end

  test "should update Dramas societe person" do
    visit _dramas_societe_person_url(@_dramas_societe_person)
    click_on "Edit this dramas societe person", match: :first

    fill_in "Name", with: @_dramas_societe_person.name
    click_on "Update Dramas societe person"

    assert_text "Dramas societe person was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas societe person" do
    visit _dramas_societe_person_url(@_dramas_societe_person)
    click_on "Destroy this dramas societe person", match: :first

    assert_text "Dramas societe person was successfully destroyed"
  end
end
