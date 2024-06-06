require "application_system_test_case"

class Dvd::BluRaysAmsTest < ApplicationSystemTestCase
  setup do
    @_dvd___blu_rays_am = _dvd___blu_rays_ams(:one)
  end

  test "visiting the index" do
    visit _dvd___blu_rays_ams_url
    assert_selector "h1", text: "Blu rays ams"
  end

  test "should create blu rays am" do
    visit _dvd___blu_rays_ams_url
    click_on "New blu rays am"

    fill_in "Name", with: @_dvd___blu_rays_am.name
    click_on "Create Blu rays am"

    assert_text "Blu rays am was successfully created"
    click_on "Back"
  end

  test "should update Blu rays am" do
    visit _dvd___blu_rays_am_url(@_dvd___blu_rays_am)
    click_on "Edit this blu rays am", match: :first

    fill_in "Name", with: @_dvd___blu_rays_am.name
    click_on "Update Blu rays am"

    assert_text "Blu rays am was successfully updated"
    click_on "Back"
  end

  test "should destroy Blu rays am" do
    visit _dvd___blu_rays_am_url(@_dvd___blu_rays_am)
    click_on "Destroy this blu rays am", match: :first

    assert_text "Blu rays am was successfully destroyed"
  end
end
