require "application_system_test_case"

class GoodiesDramasTest < ApplicationSystemTestCase
  setup do
    @_goodies_drama = _goodies_dramas(:one)
  end

  test "visiting the index" do
    visit _goodies_dramas_url
    assert_selector "h1", text: "Goodies dramas"
  end

  test "should create goodies drama" do
    visit _goodies_dramas_url
    click_on "New goodies drama"

    fill_in "Name", with: @_goodies_drama.name
    click_on "Create Goodies drama"

    assert_text "Goodies drama was successfully created"
    click_on "Back"
  end

  test "should update Goodies drama" do
    visit _goodies_drama_url(@_goodies_drama)
    click_on "Edit this goodies drama", match: :first

    fill_in "Name", with: @_goodies_drama.name
    click_on "Update Goodies drama"

    assert_text "Goodies drama was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies drama" do
    visit _goodies_drama_url(@_goodies_drama)
    click_on "Destroy this goodies drama", match: :first

    assert_text "Goodies drama was successfully destroyed"
  end
end
