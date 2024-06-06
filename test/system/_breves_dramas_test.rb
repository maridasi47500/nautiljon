require "application_system_test_case"

class BrevesDramasTest < ApplicationSystemTestCase
  setup do
    @_breves_drama = _breves_dramas(:one)
  end

  test "visiting the index" do
    visit _breves_dramas_url
    assert_selector "h1", text: "Breves dramas"
  end

  test "should create breves drama" do
    visit _breves_dramas_url
    click_on "New breves drama"

    fill_in "Name", with: @_breves_drama.name
    click_on "Create Breves drama"

    assert_text "Breves drama was successfully created"
    click_on "Back"
  end

  test "should update Breves drama" do
    visit _breves_drama_url(@_breves_drama)
    click_on "Edit this breves drama", match: :first

    fill_in "Name", with: @_breves_drama.name
    click_on "Update Breves drama"

    assert_text "Breves drama was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves drama" do
    visit _breves_drama_url(@_breves_drama)
    click_on "Destroy this breves drama", match: :first

    assert_text "Breves drama was successfully destroyed"
  end
end
