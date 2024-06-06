require "application_system_test_case"

class Clips::Lives::Bonus::ConcertsTypeBonusTest < ApplicationSystemTestCase
  setup do
    @_clips___lives___bonus___concerts_type_bonu = _clips___lives___bonus___concerts_type_bonus(:one)
  end

  test "visiting the index" do
    visit _clips___lives___bonus___concerts_type_bonus_url
    assert_selector "h1", text: "Concerts type bonus"
  end

  test "should create concerts type bonu" do
    visit _clips___lives___bonus___concerts_type_bonus_url
    click_on "New concerts type bonu"

    fill_in "Name", with: @_clips___lives___bonus___concerts_type_bonu.name
    click_on "Create Concerts type bonu"

    assert_text "Concerts type bonu was successfully created"
    click_on "Back"
  end

  test "should update Concerts type bonu" do
    visit _clips___lives___bonus___concerts_type_bonu_url(@_clips___lives___bonus___concerts_type_bonu)
    click_on "Edit this concerts type bonu", match: :first

    fill_in "Name", with: @_clips___lives___bonus___concerts_type_bonu.name
    click_on "Update Concerts type bonu"

    assert_text "Concerts type bonu was successfully updated"
    click_on "Back"
  end

  test "should destroy Concerts type bonu" do
    visit _clips___lives___bonus___concerts_type_bonu_url(@_clips___lives___bonus___concerts_type_bonu)
    click_on "Destroy this concerts type bonu", match: :first

    assert_text "Concerts type bonu was successfully destroyed"
  end
end
