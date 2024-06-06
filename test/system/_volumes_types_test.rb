require "application_system_test_case"

class VolumesTypesTest < ApplicationSystemTestCase
  setup do
    @_volumes_type = _volumes_types(:one)
  end

  test "visiting the index" do
    visit _volumes_types_url
    assert_selector "h1", text: "Volumes types"
  end

  test "should create volumes type" do
    visit _volumes_types_url
    click_on "New volumes type"

    fill_in "Name", with: @_volumes_type.name
    click_on "Create Volumes type"

    assert_text "Volumes type was successfully created"
    click_on "Back"
  end

  test "should update Volumes type" do
    visit _volumes_type_url(@_volumes_type)
    click_on "Edit this volumes type", match: :first

    fill_in "Name", with: @_volumes_type.name
    click_on "Update Volumes type"

    assert_text "Volumes type was successfully updated"
    click_on "Back"
  end

  test "should destroy Volumes type" do
    visit _volumes_type_url(@_volumes_type)
    click_on "Destroy this volumes type", match: :first

    assert_text "Volumes type was successfully destroyed"
  end
end
