require "application_system_test_case"

class Dvd::BluRaysPublicAvertisTest < ApplicationSystemTestCase
  setup do
    @_dvd___blu_rays_public_averti = _dvd___blu_rays_public_avertis(:one)
  end

  test "visiting the index" do
    visit _dvd___blu_rays_public_avertis_url
    assert_selector "h1", text: "Blu rays public avertis"
  end

  test "should create blu rays public averti" do
    visit _dvd___blu_rays_public_avertis_url
    click_on "New blu rays public averti"

    fill_in "Name", with: @_dvd___blu_rays_public_averti.name
    click_on "Create Blu rays public averti"

    assert_text "Blu rays public averti was successfully created"
    click_on "Back"
  end

  test "should update Blu rays public averti" do
    visit _dvd___blu_rays_public_averti_url(@_dvd___blu_rays_public_averti)
    click_on "Edit this blu rays public averti", match: :first

    fill_in "Name", with: @_dvd___blu_rays_public_averti.name
    click_on "Update Blu rays public averti"

    assert_text "Blu rays public averti was successfully updated"
    click_on "Back"
  end

  test "should destroy Blu rays public averti" do
    visit _dvd___blu_rays_public_averti_url(@_dvd___blu_rays_public_averti)
    click_on "Destroy this blu rays public averti", match: :first

    assert_text "Blu rays public averti was successfully destroyed"
  end
end
