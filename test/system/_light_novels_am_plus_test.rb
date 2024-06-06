require "application_system_test_case"

class LightNovelsAmPlusTest < ApplicationSystemTestCase
  setup do
    @_light_novels_am_plu = _light_novels_am_plus(:one)
  end

  test "visiting the index" do
    visit _light_novels_am_plus_url
    assert_selector "h1", text: "Light novels am plus"
  end

  test "should create light novels am plu" do
    visit _light_novels_am_plus_url
    click_on "New light novels am plu"

    fill_in "Name", with: @_light_novels_am_plu.name
    click_on "Create Light novels am plu"

    assert_text "Light novels am plu was successfully created"
    click_on "Back"
  end

  test "should update Light novels am plu" do
    visit _light_novels_am_plu_url(@_light_novels_am_plu)
    click_on "Edit this light novels am plu", match: :first

    fill_in "Name", with: @_light_novels_am_plu.name
    click_on "Update Light novels am plu"

    assert_text "Light novels am plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels am plu" do
    visit _light_novels_am_plu_url(@_light_novels_am_plu)
    click_on "Destroy this light novels am plu", match: :first

    assert_text "Light novels am plu was successfully destroyed"
  end
end
