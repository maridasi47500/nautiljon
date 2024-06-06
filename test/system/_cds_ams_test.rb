require "application_system_test_case"

class CdsAmsTest < ApplicationSystemTestCase
  setup do
    @_cds_am = _cds_ams(:one)
  end

  test "visiting the index" do
    visit _cds_ams_url
    assert_selector "h1", text: "Cds ams"
  end

  test "should create cds am" do
    visit _cds_ams_url
    click_on "New cds am"

    fill_in "Name", with: @_cds_am.name
    click_on "Create Cds am"

    assert_text "Cds am was successfully created"
    click_on "Back"
  end

  test "should update Cds am" do
    visit _cds_am_url(@_cds_am)
    click_on "Edit this cds am", match: :first

    fill_in "Name", with: @_cds_am.name
    click_on "Update Cds am"

    assert_text "Cds am was successfully updated"
    click_on "Back"
  end

  test "should destroy Cds am" do
    visit _cds_am_url(@_cds_am)
    click_on "Destroy this cds am", match: :first

    assert_text "Cds am was successfully destroyed"
  end
end
