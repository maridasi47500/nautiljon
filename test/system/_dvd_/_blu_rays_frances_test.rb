require "application_system_test_case"

class Dvd::BluRaysFrancesTest < ApplicationSystemTestCase
  setup do
    @_dvd___blu_rays_france = _dvd___blu_rays_frances(:one)
  end

  test "visiting the index" do
    visit _dvd___blu_rays_frances_url
    assert_selector "h1", text: "Blu rays frances"
  end

  test "should create blu rays france" do
    visit _dvd___blu_rays_frances_url
    click_on "New blu rays france"

    fill_in "Name", with: @_dvd___blu_rays_france.name
    click_on "Create Blu rays france"

    assert_text "Blu rays france was successfully created"
    click_on "Back"
  end

  test "should update Blu rays france" do
    visit _dvd___blu_rays_france_url(@_dvd___blu_rays_france)
    click_on "Edit this blu rays france", match: :first

    fill_in "Name", with: @_dvd___blu_rays_france.name
    click_on "Update Blu rays france"

    assert_text "Blu rays france was successfully updated"
    click_on "Back"
  end

  test "should destroy Blu rays france" do
    visit _dvd___blu_rays_france_url(@_dvd___blu_rays_france)
    click_on "Destroy this blu rays france", match: :first

    assert_text "Blu rays france was successfully destroyed"
  end
end
