require "application_system_test_case"

class PhotobooksDramasTest < ApplicationSystemTestCase
  setup do
    @_photobooks_drama = _photobooks_dramas(:one)
  end

  test "visiting the index" do
    visit _photobooks_dramas_url
    assert_selector "h1", text: "Photobooks dramas"
  end

  test "should create photobooks drama" do
    visit _photobooks_dramas_url
    click_on "New photobooks drama"

    fill_in "Name", with: @_photobooks_drama.name
    click_on "Create Photobooks drama"

    assert_text "Photobooks drama was successfully created"
    click_on "Back"
  end

  test "should update Photobooks drama" do
    visit _photobooks_drama_url(@_photobooks_drama)
    click_on "Edit this photobooks drama", match: :first

    fill_in "Name", with: @_photobooks_drama.name
    click_on "Update Photobooks drama"

    assert_text "Photobooks drama was successfully updated"
    click_on "Back"
  end

  test "should destroy Photobooks drama" do
    visit _photobooks_drama_url(@_photobooks_drama)
    click_on "Destroy this photobooks drama", match: :first

    assert_text "Photobooks drama was successfully destroyed"
  end
end
