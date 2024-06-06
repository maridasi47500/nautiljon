require "application_system_test_case"

class AnimesStaffPeopleTest < ApplicationSystemTestCase
  setup do
    @animes_staff_person = animes_staff_people(:one)
  end

  test "visiting the index" do
    visit animes_staff_people_url
    assert_selector "h1", text: "Animes staff people"
  end

  test "should create animes staff person" do
    visit animes_staff_people_url
    click_on "New animes staff person"

    fill_in "Name", with: @animes_staff_person.name
    click_on "Create Animes staff person"

    assert_text "Animes staff person was successfully created"
    click_on "Back"
  end

  test "should update Animes staff person" do
    visit animes_staff_person_url(@animes_staff_person)
    click_on "Edit this animes staff person", match: :first

    fill_in "Name", with: @animes_staff_person.name
    click_on "Update Animes staff person"

    assert_text "Animes staff person was successfully updated"
    click_on "Back"
  end

  test "should destroy Animes staff person" do
    visit animes_staff_person_url(@animes_staff_person)
    click_on "Destroy this animes staff person", match: :first

    assert_text "Animes staff person was successfully destroyed"
  end
end
