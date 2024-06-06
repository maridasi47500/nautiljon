require "application_system_test_case"

class Dvd::BluRaysPaysTest < ApplicationSystemTestCase
  setup do
    @_dvd___blu_rays_pay = _dvd___blu_rays_pays(:one)
  end

  test "visiting the index" do
    visit _dvd___blu_rays_pays_url
    assert_selector "h1", text: "Blu rays pays"
  end

  test "should create blu rays pay" do
    visit _dvd___blu_rays_pays_url
    click_on "New blu rays pay"

    fill_in "Name", with: @_dvd___blu_rays_pay.name
    click_on "Create Blu rays pay"

    assert_text "Blu rays pay was successfully created"
    click_on "Back"
  end

  test "should update Blu rays pay" do
    visit _dvd___blu_rays_pay_url(@_dvd___blu_rays_pay)
    click_on "Edit this blu rays pay", match: :first

    fill_in "Name", with: @_dvd___blu_rays_pay.name
    click_on "Update Blu rays pay"

    assert_text "Blu rays pay was successfully updated"
    click_on "Back"
  end

  test "should destroy Blu rays pay" do
    visit _dvd___blu_rays_pay_url(@_dvd___blu_rays_pay)
    click_on "Destroy this blu rays pay", match: :first

    assert_text "Blu rays pay was successfully destroyed"
  end
end
