require "application_system_test_case"

class Dvd::BluRaysEmissionTvsTest < ApplicationSystemTestCase
  setup do
    @_dvd___blu_rays_emission_tv = _dvd___blu_rays_emission_tvs(:one)
  end

  test "visiting the index" do
    visit _dvd___blu_rays_emission_tvs_url
    assert_selector "h1", text: "Blu rays emission tvs"
  end

  test "should create blu rays emission tv" do
    visit _dvd___blu_rays_emission_tvs_url
    click_on "New blu rays emission tv"

    fill_in "Name", with: @_dvd___blu_rays_emission_tv.name
    click_on "Create Blu rays emission tv"

    assert_text "Blu rays emission tv was successfully created"
    click_on "Back"
  end

  test "should update Blu rays emission tv" do
    visit _dvd___blu_rays_emission_tv_url(@_dvd___blu_rays_emission_tv)
    click_on "Edit this blu rays emission tv", match: :first

    fill_in "Name", with: @_dvd___blu_rays_emission_tv.name
    click_on "Update Blu rays emission tv"

    assert_text "Blu rays emission tv was successfully updated"
    click_on "Back"
  end

  test "should destroy Blu rays emission tv" do
    visit _dvd___blu_rays_emission_tv_url(@_dvd___blu_rays_emission_tv)
    click_on "Destroy this blu rays emission tv", match: :first

    assert_text "Blu rays emission tv was successfully destroyed"
  end
end
