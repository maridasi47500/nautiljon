require "application_system_test_case"

class BrevesDvdsTest < ApplicationSystemTestCase
  setup do
    @_breves_dvd = _breves_dvds(:one)
  end

  test "visiting the index" do
    visit _breves_dvds_url
    assert_selector "h1", text: "Breves dvds"
  end

  test "should create breves dvd" do
    visit _breves_dvds_url
    click_on "New breves dvd"

    fill_in "Name", with: @_breves_dvd.name
    click_on "Create Breves dvd"

    assert_text "Breves dvd was successfully created"
    click_on "Back"
  end

  test "should update Breves dvd" do
    visit _breves_dvd_url(@_breves_dvd)
    click_on "Edit this breves dvd", match: :first

    fill_in "Name", with: @_breves_dvd.name
    click_on "Update Breves dvd"

    assert_text "Breves dvd was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves dvd" do
    visit _breves_dvd_url(@_breves_dvd)
    click_on "Destroy this breves dvd", match: :first

    assert_text "Breves dvd was successfully destroyed"
  end
end
