require "application_system_test_case"

class CdsCdsTest < ApplicationSystemTestCase
  setup do
    @_cds_cd = _cds_cds(:one)
  end

  test "visiting the index" do
    visit _cds_cds_url
    assert_selector "h1", text: "Cds cds"
  end

  test "should create cds cd" do
    visit _cds_cds_url
    click_on "New cds cd"

    fill_in "Name", with: @_cds_cd.name
    click_on "Create Cds cd"

    assert_text "Cds cd was successfully created"
    click_on "Back"
  end

  test "should update Cds cd" do
    visit _cds_cd_url(@_cds_cd)
    click_on "Edit this cds cd", match: :first

    fill_in "Name", with: @_cds_cd.name
    click_on "Update Cds cd"

    assert_text "Cds cd was successfully updated"
    click_on "Back"
  end

  test "should destroy Cds cd" do
    visit _cds_cd_url(@_cds_cd)
    click_on "Destroy this cds cd", match: :first

    assert_text "Cds cd was successfully destroyed"
  end
end
