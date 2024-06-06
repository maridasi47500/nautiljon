require "application_system_test_case"

class Dvd::BluRaysPeopleTest < ApplicationSystemTestCase
  setup do
    @_dvd___blu_rays_person = _dvd___blu_rays_people(:one)
  end

  test "visiting the index" do
    visit _dvd___blu_rays_people_url
    assert_selector "h1", text: "Blu rays people"
  end

  test "should create blu rays person" do
    visit _dvd___blu_rays_people_url
    click_on "New blu rays person"

    fill_in "Name", with: @_dvd___blu_rays_person.name
    click_on "Create Blu rays person"

    assert_text "Blu rays person was successfully created"
    click_on "Back"
  end

  test "should update Blu rays person" do
    visit _dvd___blu_rays_person_url(@_dvd___blu_rays_person)
    click_on "Edit this blu rays person", match: :first

    fill_in "Name", with: @_dvd___blu_rays_person.name
    click_on "Update Blu rays person"

    assert_text "Blu rays person was successfully updated"
    click_on "Back"
  end

  test "should destroy Blu rays person" do
    visit _dvd___blu_rays_person_url(@_dvd___blu_rays_person)
    click_on "Destroy this blu rays person", match: :first

    assert_text "Blu rays person was successfully destroyed"
  end
end
