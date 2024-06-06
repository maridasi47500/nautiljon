require "application_system_test_case"

class DramasCdsTest < ApplicationSystemTestCase
  setup do
    @_dramas_cd = _dramas_cds(:one)
  end

  test "visiting the index" do
    visit _dramas_cds_url
    assert_selector "h1", text: "Dramas cds"
  end

  test "should create dramas cd" do
    visit _dramas_cds_url
    click_on "New dramas cd"

    fill_in "Name", with: @_dramas_cd.name
    click_on "Create Dramas cd"

    assert_text "Dramas cd was successfully created"
    click_on "Back"
  end

  test "should update Dramas cd" do
    visit _dramas_cd_url(@_dramas_cd)
    click_on "Edit this dramas cd", match: :first

    fill_in "Name", with: @_dramas_cd.name
    click_on "Update Dramas cd"

    assert_text "Dramas cd was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas cd" do
    visit _dramas_cd_url(@_dramas_cd)
    click_on "Destroy this dramas cd", match: :first

    assert_text "Dramas cd was successfully destroyed"
  end
end
