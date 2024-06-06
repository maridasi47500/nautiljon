require "application_system_test_case"

class BrevesAmsTest < ApplicationSystemTestCase
  setup do
    @_breves_am = _breves_ams(:one)
  end

  test "visiting the index" do
    visit _breves_ams_url
    assert_selector "h1", text: "Breves ams"
  end

  test "should create breves am" do
    visit _breves_ams_url
    click_on "New breves am"

    fill_in "Name", with: @_breves_am.name
    click_on "Create Breves am"

    assert_text "Breves am was successfully created"
    click_on "Back"
  end

  test "should update Breves am" do
    visit _breves_am_url(@_breves_am)
    click_on "Edit this breves am", match: :first

    fill_in "Name", with: @_breves_am.name
    click_on "Update Breves am"

    assert_text "Breves am was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves am" do
    visit _breves_am_url(@_breves_am)
    click_on "Destroy this breves am", match: :first

    assert_text "Breves am was successfully destroyed"
  end
end
