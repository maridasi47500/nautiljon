require "application_system_test_case"

class DramasGeneriquesPeopleTest < ApplicationSystemTestCase
  setup do
    @_dramas_generiques_person = _dramas_generiques_people(:one)
  end

  test "visiting the index" do
    visit _dramas_generiques_people_url
    assert_selector "h1", text: "Dramas generiques people"
  end

  test "should create dramas generiques person" do
    visit _dramas_generiques_people_url
    click_on "New dramas generiques person"

    fill_in "Name", with: @_dramas_generiques_person.name
    click_on "Create Dramas generiques person"

    assert_text "Dramas generiques person was successfully created"
    click_on "Back"
  end

  test "should update Dramas generiques person" do
    visit _dramas_generiques_person_url(@_dramas_generiques_person)
    click_on "Edit this dramas generiques person", match: :first

    fill_in "Name", with: @_dramas_generiques_person.name
    click_on "Update Dramas generiques person"

    assert_text "Dramas generiques person was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas generiques person" do
    visit _dramas_generiques_person_url(@_dramas_generiques_person)
    click_on "Destroy this dramas generiques person", match: :first

    assert_text "Dramas generiques person was successfully destroyed"
  end
end
