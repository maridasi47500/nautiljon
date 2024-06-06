require "application_system_test_case"

class AmvsTypesTest < ApplicationSystemTestCase
  setup do
    @amvs_type = amvs_types(:one)
  end

  test "visiting the index" do
    visit amvs_types_url
    assert_selector "h1", text: "Amvs types"
  end

  test "should create amvs type" do
    visit amvs_types_url
    click_on "New amvs type"

    fill_in "Name", with: @amvs_type.name
    click_on "Create Amvs type"

    assert_text "Amvs type was successfully created"
    click_on "Back"
  end

  test "should update Amvs type" do
    visit amvs_type_url(@amvs_type)
    click_on "Edit this amvs type", match: :first

    fill_in "Name", with: @amvs_type.name
    click_on "Update Amvs type"

    assert_text "Amvs type was successfully updated"
    click_on "Back"
  end

  test "should destroy Amvs type" do
    visit amvs_type_url(@amvs_type)
    click_on "Destroy this amvs type", match: :first

    assert_text "Amvs type was successfully destroyed"
  end
end
