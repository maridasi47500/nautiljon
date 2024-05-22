require "application_system_test_case"

class OstsAmsTest < ApplicationSystemTestCase
  setup do
    @osts_am = osts_ams(:one)
  end

  test "visiting the index" do
    visit osts_ams_url
    assert_selector "h1", text: "Osts ams"
  end

  test "should create osts am" do
    visit osts_ams_url
    click_on "New osts am"

    fill_in "Name", with: @osts_am.name
    click_on "Create Osts am"

    assert_text "Osts am was successfully created"
    click_on "Back"
  end

  test "should update Osts am" do
    visit osts_am_url(@osts_am)
    click_on "Edit this osts am", match: :first

    fill_in "Name", with: @osts_am.name
    click_on "Update Osts am"

    assert_text "Osts am was successfully updated"
    click_on "Back"
  end

  test "should destroy Osts am" do
    visit osts_am_url(@osts_am)
    click_on "Destroy this osts am", match: :first

    assert_text "Osts am was successfully destroyed"
  end
end
