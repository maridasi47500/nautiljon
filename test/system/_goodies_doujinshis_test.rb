require "application_system_test_case"

class GoodiesDoujinshisTest < ApplicationSystemTestCase
  setup do
    @_goodies_doujinshi = _goodies_doujinshis(:one)
  end

  test "visiting the index" do
    visit _goodies_doujinshis_url
    assert_selector "h1", text: "Goodies doujinshis"
  end

  test "should create goodies doujinshi" do
    visit _goodies_doujinshis_url
    click_on "New goodies doujinshi"

    fill_in "Name", with: @_goodies_doujinshi.name
    click_on "Create Goodies doujinshi"

    assert_text "Goodies doujinshi was successfully created"
    click_on "Back"
  end

  test "should update Goodies doujinshi" do
    visit _goodies_doujinshi_url(@_goodies_doujinshi)
    click_on "Edit this goodies doujinshi", match: :first

    fill_in "Name", with: @_goodies_doujinshi.name
    click_on "Update Goodies doujinshi"

    assert_text "Goodies doujinshi was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies doujinshi" do
    visit _goodies_doujinshi_url(@_goodies_doujinshi)
    click_on "Destroy this goodies doujinshi", match: :first

    assert_text "Goodies doujinshi was successfully destroyed"
  end
end
