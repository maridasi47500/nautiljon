require "application_system_test_case"

class LightNovelsMangaPlusTest < ApplicationSystemTestCase
  setup do
    @_light_novels_manga_plu = _light_novels_manga_plus(:one)
  end

  test "visiting the index" do
    visit _light_novels_manga_plus_url
    assert_selector "h1", text: "Light novels manga plus"
  end

  test "should create light novels manga plu" do
    visit _light_novels_manga_plus_url
    click_on "New light novels manga plu"

    fill_in "Name", with: @_light_novels_manga_plu.name
    click_on "Create Light novels manga plu"

    assert_text "Light novels manga plu was successfully created"
    click_on "Back"
  end

  test "should update Light novels manga plu" do
    visit _light_novels_manga_plu_url(@_light_novels_manga_plu)
    click_on "Edit this light novels manga plu", match: :first

    fill_in "Name", with: @_light_novels_manga_plu.name
    click_on "Update Light novels manga plu"

    assert_text "Light novels manga plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels manga plu" do
    visit _light_novels_manga_plu_url(@_light_novels_manga_plu)
    click_on "Destroy this light novels manga plu", match: :first

    assert_text "Light novels manga plu was successfully destroyed"
  end
end
