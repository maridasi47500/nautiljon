require "application_system_test_case"

class LightNovelsJvsTest < ApplicationSystemTestCase
  setup do
    @_light_novels_jv = _light_novels_jvs(:one)
  end

  test "visiting the index" do
    visit _light_novels_jvs_url
    assert_selector "h1", text: "Light novels jvs"
  end

  test "should create light novels jv" do
    visit _light_novels_jvs_url
    click_on "New light novels jv"

    fill_in "Name", with: @_light_novels_jv.name
    click_on "Create Light novels jv"

    assert_text "Light novels jv was successfully created"
    click_on "Back"
  end

  test "should update Light novels jv" do
    visit _light_novels_jv_url(@_light_novels_jv)
    click_on "Edit this light novels jv", match: :first

    fill_in "Name", with: @_light_novels_jv.name
    click_on "Update Light novels jv"

    assert_text "Light novels jv was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels jv" do
    visit _light_novels_jv_url(@_light_novels_jv)
    click_on "Destroy this light novels jv", match: :first

    assert_text "Light novels jv was successfully destroyed"
  end
end
