require "application_system_test_case"

class JeuxVideosPeopleTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_person = _jeux_videos_people(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_people_url
    assert_selector "h1", text: "Jeux videos people"
  end

  test "should create jeux videos person" do
    visit _jeux_videos_people_url
    click_on "New jeux videos person"

    fill_in "Name", with: @_jeux_videos_person.name
    click_on "Create Jeux videos person"

    assert_text "Jeux videos person was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos person" do
    visit _jeux_videos_person_url(@_jeux_videos_person)
    click_on "Edit this jeux videos person", match: :first

    fill_in "Name", with: @_jeux_videos_person.name
    click_on "Update Jeux videos person"

    assert_text "Jeux videos person was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos person" do
    visit _jeux_videos_person_url(@_jeux_videos_person)
    click_on "Destroy this jeux videos person", match: :first

    assert_text "Jeux videos person was successfully destroyed"
  end
end
