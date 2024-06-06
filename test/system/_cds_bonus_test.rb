require "application_system_test_case"

class CdsBonusTest < ApplicationSystemTestCase
  setup do
    @_cds_bonu = _cds_bonus(:one)
  end

  test "visiting the index" do
    visit _cds_bonus_url
    assert_selector "h1", text: "Cds bonus"
  end

  test "should create cds bonu" do
    visit _cds_bonus_url
    click_on "New cds bonu"

    fill_in "Name", with: @_cds_bonu.name
    click_on "Create Cds bonu"

    assert_text "Cds bonu was successfully created"
    click_on "Back"
  end

  test "should update Cds bonu" do
    visit _cds_bonu_url(@_cds_bonu)
    click_on "Edit this cds bonu", match: :first

    fill_in "Name", with: @_cds_bonu.name
    click_on "Update Cds bonu"

    assert_text "Cds bonu was successfully updated"
    click_on "Back"
  end

  test "should destroy Cds bonu" do
    visit _cds_bonu_url(@_cds_bonu)
    click_on "Destroy this cds bonu", match: :first

    assert_text "Cds bonu was successfully destroyed"
  end
end
