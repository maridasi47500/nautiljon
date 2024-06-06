require "application_system_test_case"

class LightNovelsStaffPeopleTest < ApplicationSystemTestCase
  setup do
    @_light_novels_staff_person = _light_novels_staff_people(:one)
  end

  test "visiting the index" do
    visit _light_novels_staff_people_url
    assert_selector "h1", text: "Light novels staff people"
  end

  test "should create light novels staff person" do
    visit _light_novels_staff_people_url
    click_on "New light novels staff person"

    fill_in "Name", with: @_light_novels_staff_person.name
    click_on "Create Light novels staff person"

    assert_text "Light novels staff person was successfully created"
    click_on "Back"
  end

  test "should update Light novels staff person" do
    visit _light_novels_staff_person_url(@_light_novels_staff_person)
    click_on "Edit this light novels staff person", match: :first

    fill_in "Name", with: @_light_novels_staff_person.name
    click_on "Update Light novels staff person"

    assert_text "Light novels staff person was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels staff person" do
    visit _light_novels_staff_person_url(@_light_novels_staff_person)
    click_on "Destroy this light novels staff person", match: :first

    assert_text "Light novels staff person was successfully destroyed"
  end
end
