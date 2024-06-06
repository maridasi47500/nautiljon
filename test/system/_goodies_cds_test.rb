require "application_system_test_case"

class GoodiesCdsTest < ApplicationSystemTestCase
  setup do
    @_goodies_cd = _goodies_cds(:one)
  end

  test "visiting the index" do
    visit _goodies_cds_url
    assert_selector "h1", text: "Goodies cds"
  end

  test "should create goodies cd" do
    visit _goodies_cds_url
    click_on "New goodies cd"

    fill_in "Name", with: @_goodies_cd.name
    click_on "Create Goodies cd"

    assert_text "Goodies cd was successfully created"
    click_on "Back"
  end

  test "should update Goodies cd" do
    visit _goodies_cd_url(@_goodies_cd)
    click_on "Edit this goodies cd", match: :first

    fill_in "Name", with: @_goodies_cd.name
    click_on "Update Goodies cd"

    assert_text "Goodies cd was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies cd" do
    visit _goodies_cd_url(@_goodies_cd)
    click_on "Destroy this goodies cd", match: :first

    assert_text "Goodies cd was successfully destroyed"
  end
end
