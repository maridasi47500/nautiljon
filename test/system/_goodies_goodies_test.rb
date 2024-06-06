require "application_system_test_case"

class GoodiesGoodiesTest < ApplicationSystemTestCase
  setup do
    @_goodies_goody = _goodies_goodies(:one)
  end

  test "visiting the index" do
    visit _goodies_goodies_url
    assert_selector "h1", text: "Goodies goodies"
  end

  test "should create goodies goody" do
    visit _goodies_goodies_url
    click_on "New goodies goody"

    fill_in "Name", with: @_goodies_goody.name
    click_on "Create Goodies goody"

    assert_text "Goodies goody was successfully created"
    click_on "Back"
  end

  test "should update Goodies goody" do
    visit _goodies_goody_url(@_goodies_goody)
    click_on "Edit this goodies goody", match: :first

    fill_in "Name", with: @_goodies_goody.name
    click_on "Update Goodies goody"

    assert_text "Goodies goody was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies goody" do
    visit _goodies_goody_url(@_goodies_goody)
    click_on "Destroy this goodies goody", match: :first

    assert_text "Goodies goody was successfully destroyed"
  end
end
