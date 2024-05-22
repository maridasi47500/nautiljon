require "application_system_test_case"

class OstsTypesTest < ApplicationSystemTestCase
  setup do
    @osts_type = osts_types(:one)
  end

  test "visiting the index" do
    visit osts_types_url
    assert_selector "h1", text: "Osts types"
  end

  test "should create osts type" do
    visit osts_types_url
    click_on "New osts type"

    fill_in "Name", with: @osts_type.name
    click_on "Create Osts type"

    assert_text "Osts type was successfully created"
    click_on "Back"
  end

  test "should update Osts type" do
    visit osts_type_url(@osts_type)
    click_on "Edit this osts type", match: :first

    fill_in "Name", with: @osts_type.name
    click_on "Update Osts type"

    assert_text "Osts type was successfully updated"
    click_on "Back"
  end

  test "should destroy Osts type" do
    visit osts_type_url(@osts_type)
    click_on "Destroy this osts type", match: :first

    assert_text "Osts type was successfully destroyed"
  end
end
