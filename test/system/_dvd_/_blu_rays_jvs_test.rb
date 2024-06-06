require "application_system_test_case"

class Dvd::BluRaysJvsTest < ApplicationSystemTestCase
  setup do
    @_dvd___blu_rays_jv = _dvd___blu_rays_jvs(:one)
  end

  test "visiting the index" do
    visit _dvd___blu_rays_jvs_url
    assert_selector "h1", text: "Blu rays jvs"
  end

  test "should create blu rays jv" do
    visit _dvd___blu_rays_jvs_url
    click_on "New blu rays jv"

    fill_in "Name", with: @_dvd___blu_rays_jv.name
    click_on "Create Blu rays jv"

    assert_text "Blu rays jv was successfully created"
    click_on "Back"
  end

  test "should update Blu rays jv" do
    visit _dvd___blu_rays_jv_url(@_dvd___blu_rays_jv)
    click_on "Edit this blu rays jv", match: :first

    fill_in "Name", with: @_dvd___blu_rays_jv.name
    click_on "Update Blu rays jv"

    assert_text "Blu rays jv was successfully updated"
    click_on "Back"
  end

  test "should destroy Blu rays jv" do
    visit _dvd___blu_rays_jv_url(@_dvd___blu_rays_jv)
    click_on "Destroy this blu rays jv", match: :first

    assert_text "Blu rays jv was successfully destroyed"
  end
end
