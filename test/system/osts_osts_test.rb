require "application_system_test_case"

class OstsOstsTest < ApplicationSystemTestCase
  setup do
    @osts_ost = osts_osts(:one)
  end

  test "visiting the index" do
    visit osts_osts_url
    assert_selector "h1", text: "Osts osts"
  end

  test "should create osts ost" do
    visit osts_osts_url
    click_on "New osts ost"

    fill_in "Name", with: @osts_ost.name
    click_on "Create Osts ost"

    assert_text "Osts ost was successfully created"
    click_on "Back"
  end

  test "should update Osts ost" do
    visit osts_ost_url(@osts_ost)
    click_on "Edit this osts ost", match: :first

    fill_in "Name", with: @osts_ost.name
    click_on "Update Osts ost"

    assert_text "Osts ost was successfully updated"
    click_on "Back"
  end

  test "should destroy Osts ost" do
    visit osts_ost_url(@osts_ost)
    click_on "Destroy this osts ost", match: :first

    assert_text "Osts ost was successfully destroyed"
  end
end
