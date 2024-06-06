require "application_system_test_case"

class CdsTypesTest < ApplicationSystemTestCase
  setup do
    @_cds_type = _cds_types(:one)
  end

  test "visiting the index" do
    visit _cds_types_url
    assert_selector "h1", text: "Cds types"
  end

  test "should create cds type" do
    visit _cds_types_url
    click_on "New cds type"

    fill_in "Name", with: @_cds_type.name
    click_on "Create Cds type"

    assert_text "Cds type was successfully created"
    click_on "Back"
  end

  test "should update Cds type" do
    visit _cds_type_url(@_cds_type)
    click_on "Edit this cds type", match: :first

    fill_in "Name", with: @_cds_type.name
    click_on "Update Cds type"

    assert_text "Cds type was successfully updated"
    click_on "Back"
  end

  test "should destroy Cds type" do
    visit _cds_type_url(@_cds_type)
    click_on "Destroy this cds type", match: :first

    assert_text "Cds type was successfully destroyed"
  end
end
