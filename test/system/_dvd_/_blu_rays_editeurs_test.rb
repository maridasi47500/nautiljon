require "application_system_test_case"

class Dvd::BluRaysEditeursTest < ApplicationSystemTestCase
  setup do
    @_dvd___blu_rays_editeur = _dvd___blu_rays_editeurs(:one)
  end

  test "visiting the index" do
    visit _dvd___blu_rays_editeurs_url
    assert_selector "h1", text: "Blu rays editeurs"
  end

  test "should create blu rays editeur" do
    visit _dvd___blu_rays_editeurs_url
    click_on "New blu rays editeur"

    fill_in "Name", with: @_dvd___blu_rays_editeur.name
    click_on "Create Blu rays editeur"

    assert_text "Blu rays editeur was successfully created"
    click_on "Back"
  end

  test "should update Blu rays editeur" do
    visit _dvd___blu_rays_editeur_url(@_dvd___blu_rays_editeur)
    click_on "Edit this blu rays editeur", match: :first

    fill_in "Name", with: @_dvd___blu_rays_editeur.name
    click_on "Update Blu rays editeur"

    assert_text "Blu rays editeur was successfully updated"
    click_on "Back"
  end

  test "should destroy Blu rays editeur" do
    visit _dvd___blu_rays_editeur_url(@_dvd___blu_rays_editeur)
    click_on "Destroy this blu rays editeur", match: :first

    assert_text "Blu rays editeur was successfully destroyed"
  end
end
