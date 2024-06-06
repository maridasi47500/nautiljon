require "application_system_test_case"

class LightNovelsDramasTest < ApplicationSystemTestCase
  setup do
    @_light_novels_drama = _light_novels_dramas(:one)
  end

  test "visiting the index" do
    visit _light_novels_dramas_url
    assert_selector "h1", text: "Light novels dramas"
  end

  test "should create light novels drama" do
    visit _light_novels_dramas_url
    click_on "New light novels drama"

    fill_in "Name", with: @_light_novels_drama.name
    click_on "Create Light novels drama"

    assert_text "Light novels drama was successfully created"
    click_on "Back"
  end

  test "should update Light novels drama" do
    visit _light_novels_drama_url(@_light_novels_drama)
    click_on "Edit this light novels drama", match: :first

    fill_in "Name", with: @_light_novels_drama.name
    click_on "Update Light novels drama"

    assert_text "Light novels drama was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels drama" do
    visit _light_novels_drama_url(@_light_novels_drama)
    click_on "Destroy this light novels drama", match: :first

    assert_text "Light novels drama was successfully destroyed"
  end
end
