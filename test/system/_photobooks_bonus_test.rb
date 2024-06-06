require "application_system_test_case"

class PhotobooksBonusTest < ApplicationSystemTestCase
  setup do
    @_photobooks_bonu = _photobooks_bonus(:one)
  end

  test "visiting the index" do
    visit _photobooks_bonus_url
    assert_selector "h1", text: "Photobooks bonus"
  end

  test "should create photobooks bonu" do
    visit _photobooks_bonus_url
    click_on "New photobooks bonu"

    fill_in "Name", with: @_photobooks_bonu.name
    click_on "Create Photobooks bonu"

    assert_text "Photobooks bonu was successfully created"
    click_on "Back"
  end

  test "should update Photobooks bonu" do
    visit _photobooks_bonu_url(@_photobooks_bonu)
    click_on "Edit this photobooks bonu", match: :first

    fill_in "Name", with: @_photobooks_bonu.name
    click_on "Update Photobooks bonu"

    assert_text "Photobooks bonu was successfully updated"
    click_on "Back"
  end

  test "should destroy Photobooks bonu" do
    visit _photobooks_bonu_url(@_photobooks_bonu)
    click_on "Destroy this photobooks bonu", match: :first

    assert_text "Photobooks bonu was successfully destroyed"
  end
end
