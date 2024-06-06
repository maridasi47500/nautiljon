require "application_system_test_case"

class LightNovelsOstsTest < ApplicationSystemTestCase
  setup do
    @_light_novels_ost = _light_novels_osts(:one)
  end

  test "visiting the index" do
    visit _light_novels_osts_url
    assert_selector "h1", text: "Light novels osts"
  end

  test "should create light novels ost" do
    visit _light_novels_osts_url
    click_on "New light novels ost"

    fill_in "Name", with: @_light_novels_ost.name
    click_on "Create Light novels ost"

    assert_text "Light novels ost was successfully created"
    click_on "Back"
  end

  test "should update Light novels ost" do
    visit _light_novels_ost_url(@_light_novels_ost)
    click_on "Edit this light novels ost", match: :first

    fill_in "Name", with: @_light_novels_ost.name
    click_on "Update Light novels ost"

    assert_text "Light novels ost was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels ost" do
    visit _light_novels_ost_url(@_light_novels_ost)
    click_on "Destroy this light novels ost", match: :first

    assert_text "Light novels ost was successfully destroyed"
  end
end
