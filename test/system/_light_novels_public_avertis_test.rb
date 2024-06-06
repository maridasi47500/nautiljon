require "application_system_test_case"

class LightNovelsPublicAvertisTest < ApplicationSystemTestCase
  setup do
    @_light_novels_public_averti = _light_novels_public_avertis(:one)
  end

  test "visiting the index" do
    visit _light_novels_public_avertis_url
    assert_selector "h1", text: "Light novels public avertis"
  end

  test "should create light novels public averti" do
    visit _light_novels_public_avertis_url
    click_on "New light novels public averti"

    fill_in "Name", with: @_light_novels_public_averti.name
    click_on "Create Light novels public averti"

    assert_text "Light novels public averti was successfully created"
    click_on "Back"
  end

  test "should update Light novels public averti" do
    visit _light_novels_public_averti_url(@_light_novels_public_averti)
    click_on "Edit this light novels public averti", match: :first

    fill_in "Name", with: @_light_novels_public_averti.name
    click_on "Update Light novels public averti"

    assert_text "Light novels public averti was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels public averti" do
    visit _light_novels_public_averti_url(@_light_novels_public_averti)
    click_on "Destroy this light novels public averti", match: :first

    assert_text "Light novels public averti was successfully destroyed"
  end
end
