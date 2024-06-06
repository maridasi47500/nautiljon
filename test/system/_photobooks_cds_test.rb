require "application_system_test_case"

class PhotobooksCdsTest < ApplicationSystemTestCase
  setup do
    @_photobooks_cd = _photobooks_cds(:one)
  end

  test "visiting the index" do
    visit _photobooks_cds_url
    assert_selector "h1", text: "Photobooks cds"
  end

  test "should create photobooks cd" do
    visit _photobooks_cds_url
    click_on "New photobooks cd"

    fill_in "Name", with: @_photobooks_cd.name
    click_on "Create Photobooks cd"

    assert_text "Photobooks cd was successfully created"
    click_on "Back"
  end

  test "should update Photobooks cd" do
    visit _photobooks_cd_url(@_photobooks_cd)
    click_on "Edit this photobooks cd", match: :first

    fill_in "Name", with: @_photobooks_cd.name
    click_on "Update Photobooks cd"

    assert_text "Photobooks cd was successfully updated"
    click_on "Back"
  end

  test "should destroy Photobooks cd" do
    visit _photobooks_cd_url(@_photobooks_cd)
    click_on "Destroy this photobooks cd", match: :first

    assert_text "Photobooks cd was successfully destroyed"
  end
end
