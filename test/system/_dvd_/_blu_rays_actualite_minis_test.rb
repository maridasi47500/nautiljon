require "application_system_test_case"

class Dvd::BluRaysActualiteMinisTest < ApplicationSystemTestCase
  setup do
    @_dvd___blu_rays_actualite_mini = _dvd___blu_rays_actualite_minis(:one)
  end

  test "visiting the index" do
    visit _dvd___blu_rays_actualite_minis_url
    assert_selector "h1", text: "Blu rays actualite minis"
  end

  test "should create blu rays actualite mini" do
    visit _dvd___blu_rays_actualite_minis_url
    click_on "New blu rays actualite mini"

    fill_in "Name", with: @_dvd___blu_rays_actualite_mini.name
    click_on "Create Blu rays actualite mini"

    assert_text "Blu rays actualite mini was successfully created"
    click_on "Back"
  end

  test "should update Blu rays actualite mini" do
    visit _dvd___blu_rays_actualite_mini_url(@_dvd___blu_rays_actualite_mini)
    click_on "Edit this blu rays actualite mini", match: :first

    fill_in "Name", with: @_dvd___blu_rays_actualite_mini.name
    click_on "Update Blu rays actualite mini"

    assert_text "Blu rays actualite mini was successfully updated"
    click_on "Back"
  end

  test "should destroy Blu rays actualite mini" do
    visit _dvd___blu_rays_actualite_mini_url(@_dvd___blu_rays_actualite_mini)
    click_on "Destroy this blu rays actualite mini", match: :first

    assert_text "Blu rays actualite mini was successfully destroyed"
  end
end
