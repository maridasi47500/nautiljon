require "application_system_test_case"

class DoujinshisCulturesTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_culture = _doujinshis_cultures(:one)
  end

  test "visiting the index" do
    visit _doujinshis_cultures_url
    assert_selector "h1", text: "Doujinshis cultures"
  end

  test "should create doujinshis culture" do
    visit _doujinshis_cultures_url
    click_on "New doujinshis culture"

    fill_in "Name", with: @_doujinshis_culture.name
    click_on "Create Doujinshis culture"

    assert_text "Doujinshis culture was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis culture" do
    visit _doujinshis_culture_url(@_doujinshis_culture)
    click_on "Edit this doujinshis culture", match: :first

    fill_in "Name", with: @_doujinshis_culture.name
    click_on "Update Doujinshis culture"

    assert_text "Doujinshis culture was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis culture" do
    visit _doujinshis_culture_url(@_doujinshis_culture)
    click_on "Destroy this doujinshis culture", match: :first

    assert_text "Doujinshis culture was successfully destroyed"
  end
end
