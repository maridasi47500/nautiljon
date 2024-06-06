require "application_system_test_case"

class Dvd::BluRaysLitteratureAsiatiquesTest < ApplicationSystemTestCase
  setup do
    @_dvd___blu_rays_litterature_asiatique = _dvd___blu_rays_litterature_asiatiques(:one)
  end

  test "visiting the index" do
    visit _dvd___blu_rays_litterature_asiatiques_url
    assert_selector "h1", text: "Blu rays litterature asiatiques"
  end

  test "should create blu rays litterature asiatique" do
    visit _dvd___blu_rays_litterature_asiatiques_url
    click_on "New blu rays litterature asiatique"

    fill_in "Name", with: @_dvd___blu_rays_litterature_asiatique.name
    click_on "Create Blu rays litterature asiatique"

    assert_text "Blu rays litterature asiatique was successfully created"
    click_on "Back"
  end

  test "should update Blu rays litterature asiatique" do
    visit _dvd___blu_rays_litterature_asiatique_url(@_dvd___blu_rays_litterature_asiatique)
    click_on "Edit this blu rays litterature asiatique", match: :first

    fill_in "Name", with: @_dvd___blu_rays_litterature_asiatique.name
    click_on "Update Blu rays litterature asiatique"

    assert_text "Blu rays litterature asiatique was successfully updated"
    click_on "Back"
  end

  test "should destroy Blu rays litterature asiatique" do
    visit _dvd___blu_rays_litterature_asiatique_url(@_dvd___blu_rays_litterature_asiatique)
    click_on "Destroy this blu rays litterature asiatique", match: :first

    assert_text "Blu rays litterature asiatique was successfully destroyed"
  end
end
