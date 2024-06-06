require "application_system_test_case"

class LightNovelsLnPlusTest < ApplicationSystemTestCase
  setup do
    @_light_novels_ln_plu = _light_novels_ln_plus(:one)
  end

  test "visiting the index" do
    visit _light_novels_ln_plus_url
    assert_selector "h1", text: "Light novels ln plus"
  end

  test "should create light novels ln plu" do
    visit _light_novels_ln_plus_url
    click_on "New light novels ln plu"

    fill_in "Name", with: @_light_novels_ln_plu.name
    click_on "Create Light novels ln plu"

    assert_text "Light novels ln plu was successfully created"
    click_on "Back"
  end

  test "should update Light novels ln plu" do
    visit _light_novels_ln_plu_url(@_light_novels_ln_plu)
    click_on "Edit this light novels ln plu", match: :first

    fill_in "Name", with: @_light_novels_ln_plu.name
    click_on "Update Light novels ln plu"

    assert_text "Light novels ln plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels ln plu" do
    visit _light_novels_ln_plu_url(@_light_novels_ln_plu)
    click_on "Destroy this light novels ln plu", match: :first

    assert_text "Light novels ln plu was successfully destroyed"
  end
end
