require "application_system_test_case"

class LightNovelsCulturesTest < ApplicationSystemTestCase
  setup do
    @_light_novels_culture = _light_novels_cultures(:one)
  end

  test "visiting the index" do
    visit _light_novels_cultures_url
    assert_selector "h1", text: "Light novels cultures"
  end

  test "should create light novels culture" do
    visit _light_novels_cultures_url
    click_on "New light novels culture"

    fill_in "Name", with: @_light_novels_culture.name
    click_on "Create Light novels culture"

    assert_text "Light novels culture was successfully created"
    click_on "Back"
  end

  test "should update Light novels culture" do
    visit _light_novels_culture_url(@_light_novels_culture)
    click_on "Edit this light novels culture", match: :first

    fill_in "Name", with: @_light_novels_culture.name
    click_on "Update Light novels culture"

    assert_text "Light novels culture was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels culture" do
    visit _light_novels_culture_url(@_light_novels_culture)
    click_on "Destroy this light novels culture", match: :first

    assert_text "Light novels culture was successfully destroyed"
  end
end
