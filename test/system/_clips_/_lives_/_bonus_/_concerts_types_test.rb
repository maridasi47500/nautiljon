require "application_system_test_case"

class Clips::Lives::Bonus::ConcertsTypesTest < ApplicationSystemTestCase
  setup do
    @_clips___lives___bonus___concerts_type = _clips___lives___bonus___concerts_types(:one)
  end

  test "visiting the index" do
    visit _clips___lives___bonus___concerts_types_url
    assert_selector "h1", text: "Concerts types"
  end

  test "should create concerts type" do
    visit _clips___lives___bonus___concerts_types_url
    click_on "New concerts type"

    fill_in "Name", with: @_clips___lives___bonus___concerts_type.name
    click_on "Create Concerts type"

    assert_text "Concerts type was successfully created"
    click_on "Back"
  end

  test "should update Concerts type" do
    visit _clips___lives___bonus___concerts_type_url(@_clips___lives___bonus___concerts_type)
    click_on "Edit this concerts type", match: :first

    fill_in "Name", with: @_clips___lives___bonus___concerts_type.name
    click_on "Update Concerts type"

    assert_text "Concerts type was successfully updated"
    click_on "Back"
  end

  test "should destroy Concerts type" do
    visit _clips___lives___bonus___concerts_type_url(@_clips___lives___bonus___concerts_type)
    click_on "Destroy this concerts type", match: :first

    assert_text "Concerts type was successfully destroyed"
  end
end
