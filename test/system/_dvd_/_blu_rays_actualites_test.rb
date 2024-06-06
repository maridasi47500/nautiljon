require "application_system_test_case"

class Dvd::BluRaysActualitesTest < ApplicationSystemTestCase
  setup do
    @_dvd___blu_rays_actualite = _dvd___blu_rays_actualites(:one)
  end

  test "visiting the index" do
    visit _dvd___blu_rays_actualites_url
    assert_selector "h1", text: "Blu rays actualites"
  end

  test "should create blu rays actualite" do
    visit _dvd___blu_rays_actualites_url
    click_on "New blu rays actualite"

    fill_in "Name", with: @_dvd___blu_rays_actualite.name
    click_on "Create Blu rays actualite"

    assert_text "Blu rays actualite was successfully created"
    click_on "Back"
  end

  test "should update Blu rays actualite" do
    visit _dvd___blu_rays_actualite_url(@_dvd___blu_rays_actualite)
    click_on "Edit this blu rays actualite", match: :first

    fill_in "Name", with: @_dvd___blu_rays_actualite.name
    click_on "Update Blu rays actualite"

    assert_text "Blu rays actualite was successfully updated"
    click_on "Back"
  end

  test "should destroy Blu rays actualite" do
    visit _dvd___blu_rays_actualite_url(@_dvd___blu_rays_actualite)
    click_on "Destroy this blu rays actualite", match: :first

    assert_text "Blu rays actualite was successfully destroyed"
  end
end
