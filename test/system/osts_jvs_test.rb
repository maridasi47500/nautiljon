require "application_system_test_case"

class OstsJvsTest < ApplicationSystemTestCase
  setup do
    @osts_jv = osts_jvs(:one)
  end

  test "visiting the index" do
    visit osts_jvs_url
    assert_selector "h1", text: "Osts jvs"
  end

  test "should create osts jv" do
    visit osts_jvs_url
    click_on "New osts jv"

    fill_in "Name", with: @osts_jv.name
    click_on "Create Osts jv"

    assert_text "Osts jv was successfully created"
    click_on "Back"
  end

  test "should update Osts jv" do
    visit osts_jv_url(@osts_jv)
    click_on "Edit this osts jv", match: :first

    fill_in "Name", with: @osts_jv.name
    click_on "Update Osts jv"

    assert_text "Osts jv was successfully updated"
    click_on "Back"
  end

  test "should destroy Osts jv" do
    visit osts_jv_url(@osts_jv)
    click_on "Destroy this osts jv", match: :first

    assert_text "Osts jv was successfully destroyed"
  end
end
