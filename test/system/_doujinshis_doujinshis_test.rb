require "application_system_test_case"

class DoujinshisDoujinshisTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_doujinshi = _doujinshis_doujinshis(:one)
  end

  test "visiting the index" do
    visit _doujinshis_doujinshis_url
    assert_selector "h1", text: "Doujinshis doujinshis"
  end

  test "should create doujinshis doujinshi" do
    visit _doujinshis_doujinshis_url
    click_on "New doujinshis doujinshi"

    fill_in "Name", with: @_doujinshis_doujinshi.name
    click_on "Create Doujinshis doujinshi"

    assert_text "Doujinshis doujinshi was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis doujinshi" do
    visit _doujinshis_doujinshi_url(@_doujinshis_doujinshi)
    click_on "Edit this doujinshis doujinshi", match: :first

    fill_in "Name", with: @_doujinshis_doujinshi.name
    click_on "Update Doujinshis doujinshi"

    assert_text "Doujinshis doujinshi was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis doujinshi" do
    visit _doujinshis_doujinshi_url(@_doujinshis_doujinshi)
    click_on "Destroy this doujinshis doujinshi", match: :first

    assert_text "Doujinshis doujinshi was successfully destroyed"
  end
end
