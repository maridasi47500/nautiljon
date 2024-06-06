require "application_system_test_case"

class DoujinshisJvsTest < ApplicationSystemTestCase
  setup do
    @_doujinshis_jv = _doujinshis_jvs(:one)
  end

  test "visiting the index" do
    visit _doujinshis_jvs_url
    assert_selector "h1", text: "Doujinshis jvs"
  end

  test "should create doujinshis jv" do
    visit _doujinshis_jvs_url
    click_on "New doujinshis jv"

    fill_in "Name", with: @_doujinshis_jv.name
    click_on "Create Doujinshis jv"

    assert_text "Doujinshis jv was successfully created"
    click_on "Back"
  end

  test "should update Doujinshis jv" do
    visit _doujinshis_jv_url(@_doujinshis_jv)
    click_on "Edit this doujinshis jv", match: :first

    fill_in "Name", with: @_doujinshis_jv.name
    click_on "Update Doujinshis jv"

    assert_text "Doujinshis jv was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshis jv" do
    visit _doujinshis_jv_url(@_doujinshis_jv)
    click_on "Destroy this doujinshis jv", match: :first

    assert_text "Doujinshis jv was successfully destroyed"
  end
end
