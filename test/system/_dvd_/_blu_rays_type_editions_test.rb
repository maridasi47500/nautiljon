require "application_system_test_case"

class Dvd::BluRaysTypeEditionsTest < ApplicationSystemTestCase
  setup do
    @_dvd___blu_rays_type_edition = _dvd___blu_rays_type_editions(:one)
  end

  test "visiting the index" do
    visit _dvd___blu_rays_type_editions_url
    assert_selector "h1", text: "Blu rays type editions"
  end

  test "should create blu rays type edition" do
    visit _dvd___blu_rays_type_editions_url
    click_on "New blu rays type edition"

    fill_in "Name", with: @_dvd___blu_rays_type_edition.name
    click_on "Create Blu rays type edition"

    assert_text "Blu rays type edition was successfully created"
    click_on "Back"
  end

  test "should update Blu rays type edition" do
    visit _dvd___blu_rays_type_edition_url(@_dvd___blu_rays_type_edition)
    click_on "Edit this blu rays type edition", match: :first

    fill_in "Name", with: @_dvd___blu_rays_type_edition.name
    click_on "Update Blu rays type edition"

    assert_text "Blu rays type edition was successfully updated"
    click_on "Back"
  end

  test "should destroy Blu rays type edition" do
    visit _dvd___blu_rays_type_edition_url(@_dvd___blu_rays_type_edition)
    click_on "Destroy this blu rays type edition", match: :first

    assert_text "Blu rays type edition was successfully destroyed"
  end
end
