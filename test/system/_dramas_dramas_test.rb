require "application_system_test_case"

class DramasDramasTest < ApplicationSystemTestCase
  setup do
    @_dramas_drama = _dramas_dramas(:one)
  end

  test "visiting the index" do
    visit _dramas_dramas_url
    assert_selector "h1", text: "Dramas dramas"
  end

  test "should create dramas drama" do
    visit _dramas_dramas_url
    click_on "New dramas drama"

    fill_in "Name", with: @_dramas_drama.name
    click_on "Create Dramas drama"

    assert_text "Dramas drama was successfully created"
    click_on "Back"
  end

  test "should update Dramas drama" do
    visit _dramas_drama_url(@_dramas_drama)
    click_on "Edit this dramas drama", match: :first

    fill_in "Name", with: @_dramas_drama.name
    click_on "Update Dramas drama"

    assert_text "Dramas drama was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas drama" do
    visit _dramas_drama_url(@_dramas_drama)
    click_on "Destroy this dramas drama", match: :first

    assert_text "Dramas drama was successfully destroyed"
  end
end
