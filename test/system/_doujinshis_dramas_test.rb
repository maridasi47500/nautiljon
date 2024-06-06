require "application_system_test_case"

class DoujinshisDramasTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_drama = _doujinshis_dramas(:one)
  end

  test "visiting the index" do
    visit _doujinshis_dramas_url
    assert_selector "h1", text: "Doujinshis dramas"
  end

  test "should create doujinshis drama" do
    visit _doujinshis_dramas_url
    click_on "New doujinshis drama"

    fill_in "Name", with: @_doujinshis_drama.name
    click_on "Create Doujinshis drama"

    assert_text "Doujinshis drama was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis drama" do
    visit _doujinshis_drama_url(@_doujinshis_drama)
    click_on "Edit this doujinshis drama", match: :first

    fill_in "Name", with: @_doujinshis_drama.name
    click_on "Update Doujinshis drama"

    assert_text "Doujinshis drama was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis drama" do
    visit _doujinshis_drama_url(@_doujinshis_drama)
    click_on "Destroy this doujinshis drama", match: :first

    assert_text "Doujinshis drama was successfully destroyed"
  end
end
