require "application_system_test_case"

class LightNovelsAmsTest < ApplicationSystemTestCase
  setup do
    @_light_novels_am = _light_novels_ams(:one)
  end

  test "visiting the index" do
    visit _light_novels_ams_url
    assert_selector "h1", text: "Light novels ams"
  end

  test "should create light novels am" do
    visit _light_novels_ams_url
    click_on "New light novels am"

    fill_in "Name", with: @_light_novels_am.name
    click_on "Create Light novels am"

    assert_text "Light novels am was successfully created"
    click_on "Back"
  end

  test "should update Light novels am" do
    visit _light_novels_am_url(@_light_novels_am)
    click_on "Edit this light novels am", match: :first

    fill_in "Name", with: @_light_novels_am.name
    click_on "Update Light novels am"

    assert_text "Light novels am was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels am" do
    visit _light_novels_am_url(@_light_novels_am)
    click_on "Destroy this light novels am", match: :first

    assert_text "Light novels am was successfully destroyed"
  end
end
