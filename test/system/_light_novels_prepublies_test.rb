require "application_system_test_case"

class LightNovelsPrepubliesTest < ApplicationSystemTestCase
  setup do
    @_light_novels_prepubly = _light_novels_prepublies(:one)
  end

  test "visiting the index" do
    visit _light_novels_prepublies_url
    assert_selector "h1", text: "Light novels prepublies"
  end

  test "should create light novels prepublie" do
    visit _light_novels_prepublies_url
    click_on "New light novels prepublie"

    fill_in "Name", with: @_light_novels_prepubly.name
    click_on "Create Light novels prepublie"

    assert_text "Light novels prepublie was successfully created"
    click_on "Back"
  end

  test "should update Light novels prepublie" do
    visit _light_novels_prepubly_url(@_light_novels_prepubly)
    click_on "Edit this light novels prepublie", match: :first

    fill_in "Name", with: @_light_novels_prepubly.name
    click_on "Update Light novels prepublie"

    assert_text "Light novels prepublie was successfully updated"
    click_on "Back"
  end

  test "should destroy Light novels prepublie" do
    visit _light_novels_prepubly_url(@_light_novels_prepubly)
    click_on "Destroy this light novels prepublie", match: :first

    assert_text "Light novels prepublie was successfully destroyed"
  end
end
