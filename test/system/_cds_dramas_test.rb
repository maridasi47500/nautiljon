require "application_system_test_case"

class CdsDramasTest < ApplicationSystemTestCase
  setup do
    @_cds_drama = _cds_dramas(:one)
  end

  test "visiting the index" do
    visit _cds_dramas_url
    assert_selector "h1", text: "Cds dramas"
  end

  test "should create cds drama" do
    visit _cds_dramas_url
    click_on "New cds drama"

    fill_in "Name", with: @_cds_drama.name
    click_on "Create Cds drama"

    assert_text "Cds drama was successfully created"
    click_on "Back"
  end

  test "should update Cds drama" do
    visit _cds_drama_url(@_cds_drama)
    click_on "Edit this cds drama", match: :first

    fill_in "Name", with: @_cds_drama.name
    click_on "Update Cds drama"

    assert_text "Cds drama was successfully updated"
    click_on "Back"
  end

  test "should destroy Cds drama" do
    visit _cds_drama_url(@_cds_drama)
    click_on "Destroy this cds drama", match: :first

    assert_text "Cds drama was successfully destroyed"
  end
end
