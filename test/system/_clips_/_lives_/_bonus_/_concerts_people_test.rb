require "application_system_test_case"

class Clips::Lives::Bonus::ConcertsPeopleTest < ApplicationSystemTestCase
  setup do
    @_clips___lives___bonus___concerts_person = _clips___lives___bonus___concerts_people(:one)
  end

  test "visiting the index" do
    visit _clips___lives___bonus___concerts_people_url
    assert_selector "h1", text: "Concerts people"
  end

  test "should create concerts person" do
    visit _clips___lives___bonus___concerts_people_url
    click_on "New concerts person"

    fill_in "Name", with: @_clips___lives___bonus___concerts_person.name
    click_on "Create Concerts person"

    assert_text "Concerts person was successfully created"
    click_on "Back"
  end

  test "should update Concerts person" do
    visit _clips___lives___bonus___concerts_person_url(@_clips___lives___bonus___concerts_person)
    click_on "Edit this concerts person", match: :first

    fill_in "Name", with: @_clips___lives___bonus___concerts_person.name
    click_on "Update Concerts person"

    assert_text "Concerts person was successfully updated"
    click_on "Back"
  end

  test "should destroy Concerts person" do
    visit _clips___lives___bonus___concerts_person_url(@_clips___lives___bonus___concerts_person)
    click_on "Destroy this concerts person", match: :first

    assert_text "Concerts person was successfully destroyed"
  end
end
