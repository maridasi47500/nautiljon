require "application_system_test_case"

class LightNovelsJvPlusTest < ApplicationSystemTestCase
  setup do
    @_light_novels_jv_plu = _light_novels_jv_plus(:one)
  end

  test "visiting the index" do
    visit _light_novels_jv_plus_url
    assert_selector "h1", text: "Light novels jv plus"
  end

  test "should create light novels jv plu" do
    visit _light_novels_jv_plus_url
    click_on "New light novels jv plu"

    fill_in "Name", with: @_light_novels_jv_plu.name
    click_on "Create Light novels jv plu"

    assert_text "Light novels jv plu was successfully created"
    click_on "Back"
  end

  test "should update Light novels jv plu" do
    visit _light_novels_jv_plu_url(@_light_novels_jv_plu)
    click_on "Edit this light novels jv plu", match: :first

    fill_in "Name", with: @_light_novels_jv_plu.name
    click_on "Update Light novels jv plu"

    assert_text "Light novels jv plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels jv plu" do
    visit _light_novels_jv_plu_url(@_light_novels_jv_plu)
    click_on "Destroy this light novels jv plu", match: :first

    assert_text "Light novels jv plu was successfully destroyed"
  end
end
