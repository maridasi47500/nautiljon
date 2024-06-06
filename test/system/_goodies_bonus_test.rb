require "application_system_test_case"

class GoodiesBonusTest < ApplicationSystemTestCase
  setup do
    @_goodies_bonu = _goodies_bonus(:one)
  end

  test "visiting the index" do
    visit _goodies_bonus_url
    assert_selector "h1", text: "Goodies bonus"
  end

  test "should create goodies bonu" do
    visit _goodies_bonus_url
    click_on "New goodies bonu"

    fill_in "Name", with: @_goodies_bonu.name
    click_on "Create Goodies bonu"

    assert_text "Goodies bonu was successfully created"
    click_on "Back"
  end

  test "should update Goodies bonu" do
    visit _goodies_bonu_url(@_goodies_bonu)
    click_on "Edit this goodies bonu", match: :first

    fill_in "Name", with: @_goodies_bonu.name
    click_on "Update Goodies bonu"

    assert_text "Goodies bonu was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies bonu" do
    visit _goodies_bonu_url(@_goodies_bonu)
    click_on "Destroy this goodies bonu", match: :first

    assert_text "Goodies bonu was successfully destroyed"
  end
end
