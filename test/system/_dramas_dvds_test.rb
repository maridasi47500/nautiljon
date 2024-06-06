require "application_system_test_case"

class DramasDvdsTest < ApplicationSystemTestCase
  setup do
    @_dramas_dvd = _dramas_dvds(:one)
  end

  test "visiting the index" do
    visit _dramas_dvds_url
    assert_selector "h1", text: "Dramas dvds"
  end

  test "should create dramas dvd" do
    visit _dramas_dvds_url
    click_on "New dramas dvd"

    fill_in "Name", with: @_dramas_dvd.name
    click_on "Create Dramas dvd"

    assert_text "Dramas dvd was successfully created"
    click_on "Back"
  end

  test "should update Dramas dvd" do
    visit _dramas_dvd_url(@_dramas_dvd)
    click_on "Edit this dramas dvd", match: :first

    fill_in "Name", with: @_dramas_dvd.name
    click_on "Update Dramas dvd"

    assert_text "Dramas dvd was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas dvd" do
    visit _dramas_dvd_url(@_dramas_dvd)
    click_on "Destroy this dramas dvd", match: :first

    assert_text "Dramas dvd was successfully destroyed"
  end
end
