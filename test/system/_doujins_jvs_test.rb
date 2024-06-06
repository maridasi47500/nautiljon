require "application_system_test_case"

class DoujinsJvsTest < ApplicationSystemTestCase
  setup do
    @_doujins_jv = _doujins_jvs(:one)
  end

  test "visiting the index" do
    visit _doujins_jvs_url
    assert_selector "h1", text: "Doujins jvs"
  end

  test "should create doujins jv" do
    visit _doujins_jvs_url
    click_on "New doujins jv"

    fill_in "Name", with: @_doujins_jv.name
    click_on "Create Doujins jv"

    assert_text "Doujins jv was successfully created"
    click_on "Back"
  end

  test "should update Doujins jv" do
    visit _doujins_jv_url(@_doujins_jv)
    click_on "Edit this doujins jv", match: :first

    fill_in "Name", with: @_doujins_jv.name
    click_on "Update Doujins jv"

    assert_text "Doujins jv was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujins jv" do
    visit _doujins_jv_url(@_doujins_jv)
    click_on "Destroy this doujins jv", match: :first

    assert_text "Doujins jv was successfully destroyed"
  end
end
