require "application_system_test_case"

class Dvd::BluRaysGroupesTest < ApplicationSystemTestCase
  setup do
    @_dvd___blu_rays_groupe = _dvd___blu_rays_groupes(:one)
  end

  test "visiting the index" do
    visit _dvd___blu_rays_groupes_url
    assert_selector "h1", text: "Blu rays groupes"
  end

  test "should create blu rays groupe" do
    visit _dvd___blu_rays_groupes_url
    click_on "New blu rays groupe"

    fill_in "Name", with: @_dvd___blu_rays_groupe.name
    click_on "Create Blu rays groupe"

    assert_text "Blu rays groupe was successfully created"
    click_on "Back"
  end

  test "should update Blu rays groupe" do
    visit _dvd___blu_rays_groupe_url(@_dvd___blu_rays_groupe)
    click_on "Edit this blu rays groupe", match: :first

    fill_in "Name", with: @_dvd___blu_rays_groupe.name
    click_on "Update Blu rays groupe"

    assert_text "Blu rays groupe was successfully updated"
    click_on "Back"
  end

  test "should destroy Blu rays groupe" do
    visit _dvd___blu_rays_groupe_url(@_dvd___blu_rays_groupe)
    click_on "Destroy this blu rays groupe", match: :first

    assert_text "Blu rays groupe was successfully destroyed"
  end
end
