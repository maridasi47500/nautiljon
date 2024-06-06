require "application_system_test_case"

class JeuxVideosStaffPeopleTest < ApplicationSystemTestCase
  setup do
    @_jeux_videos_staff_person = _jeux_videos_staff_people(:one)
  end

  test "visiting the index" do
    visit _jeux_videos_staff_people_url
    assert_selector "h1", text: "Jeux videos staff people"
  end

  test "should create jeux videos staff person" do
    visit _jeux_videos_staff_people_url
    click_on "New jeux videos staff person"

    fill_in "Name", with: @_jeux_videos_staff_person.name
    click_on "Create Jeux videos staff person"

    assert_text "Jeux videos staff person was successfully created"
    click_on "Back"
  end

  test "should update Jeux videos staff person" do
    visit _jeux_videos_staff_person_url(@_jeux_videos_staff_person)
    click_on "Edit this jeux videos staff person", match: :first

    fill_in "Name", with: @_jeux_videos_staff_person.name
    click_on "Update Jeux videos staff person"

    assert_text "Jeux videos staff person was successfully updated"
    click_on "Back"
  end

  test "should destroy Jeux videos staff person" do
    visit _jeux_videos_staff_person_url(@_jeux_videos_staff_person)
    click_on "Destroy this jeux videos staff person", match: :first

    assert_text "Jeux videos staff person was successfully destroyed"
  end
end
