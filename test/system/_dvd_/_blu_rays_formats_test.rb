require "application_system_test_case"

class Dvd::BluRaysFormatsTest < ApplicationSystemTestCase
  setup do
    @_dvd___blu_rays_format = _dvd___blu_rays_formats(:one)
  end

  test "visiting the index" do
    visit _dvd___blu_rays_formats_url
    assert_selector "h1", text: "Blu rays formats"
  end

  test "should create blu rays format" do
    visit _dvd___blu_rays_formats_url
    click_on "New blu rays format"

    fill_in "Name", with: @_dvd___blu_rays_format.name
    click_on "Create Blu rays format"

    assert_text "Blu rays format was successfully created"
    click_on "Back"
  end

  test "should update Blu rays format" do
    visit _dvd___blu_rays_format_url(@_dvd___blu_rays_format)
    click_on "Edit this blu rays format", match: :first

    fill_in "Name", with: @_dvd___blu_rays_format.name
    click_on "Update Blu rays format"

    assert_text "Blu rays format was successfully updated"
    click_on "Back"
  end

  test "should destroy Blu rays format" do
    visit _dvd___blu_rays_format_url(@_dvd___blu_rays_format)
    click_on "Destroy this blu rays format", match: :first

    assert_text "Blu rays format was successfully destroyed"
  end
end
