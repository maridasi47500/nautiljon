require "application_system_test_case"

class DramasJvsTest < ApplicationSystemTestCase
  setup do
    @_dramas_jv = _dramas_jvs(:one)
  end

  test "visiting the index" do
    visit _dramas_jvs_url
    assert_selector "h1", text: "Dramas jvs"
  end

  test "should create dramas jv" do
    visit _dramas_jvs_url
    click_on "New dramas jv"

    fill_in "Name", with: @_dramas_jv.name
    click_on "Create Dramas jv"

    assert_text "Dramas jv was successfully created"
    click_on "Back"
  end

  test "should update Dramas jv" do
    visit _dramas_jv_url(@_dramas_jv)
    click_on "Edit this dramas jv", match: :first

    fill_in "Name", with: @_dramas_jv.name
    click_on "Update Dramas jv"

    assert_text "Dramas jv was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas jv" do
    visit _dramas_jv_url(@_dramas_jv)
    click_on "Destroy this dramas jv", match: :first

    assert_text "Dramas jv was successfully destroyed"
  end
end
