require "application_system_test_case"

class Dvd::BluRaysDramasTest < ApplicationSystemTestCase
  setup do
    @_dvd___blu_rays_drama = _dvd___blu_rays_dramas(:one)
  end

  test "visiting the index" do
    visit _dvd___blu_rays_dramas_url
    assert_selector "h1", text: "Blu rays dramas"
  end

  test "should create blu rays drama" do
    visit _dvd___blu_rays_dramas_url
    click_on "New blu rays drama"

    fill_in "Name", with: @_dvd___blu_rays_drama.name
    click_on "Create Blu rays drama"

    assert_text "Blu rays drama was successfully created"
    click_on "Back"
  end

  test "should update Blu rays drama" do
    visit _dvd___blu_rays_drama_url(@_dvd___blu_rays_drama)
    click_on "Edit this blu rays drama", match: :first

    fill_in "Name", with: @_dvd___blu_rays_drama.name
    click_on "Update Blu rays drama"

    assert_text "Blu rays drama was successfully updated"
    click_on "Back"
  end

  test "should destroy Blu rays drama" do
    visit _dvd___blu_rays_drama_url(@_dvd___blu_rays_drama)
    click_on "Destroy this blu rays drama", match: :first

    assert_text "Blu rays drama was successfully destroyed"
  end
end
