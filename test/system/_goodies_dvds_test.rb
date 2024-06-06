require "application_system_test_case"

class GoodiesDvdsTest < ApplicationSystemTestCase
  setup do
    @_goodies_dvd = _goodies_dvds(:one)
  end

  test "visiting the index" do
    visit _goodies_dvds_url
    assert_selector "h1", text: "Goodies dvds"
  end

  test "should create goodies dvd" do
    visit _goodies_dvds_url
    click_on "New goodies dvd"

    fill_in "Name", with: @_goodies_dvd.name
    click_on "Create Goodies dvd"

    assert_text "Goodies dvd was successfully created"
    click_on "Back"
  end

  test "should update Goodies dvd" do
    visit _goodies_dvd_url(@_goodies_dvd)
    click_on "Edit this goodies dvd", match: :first

    fill_in "Name", with: @_goodies_dvd.name
    click_on "Update Goodies dvd"

    assert_text "Goodies dvd was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies dvd" do
    visit _goodies_dvd_url(@_goodies_dvd)
    click_on "Destroy this goodies dvd", match: :first

    assert_text "Goodies dvd was successfully destroyed"
  end
end
