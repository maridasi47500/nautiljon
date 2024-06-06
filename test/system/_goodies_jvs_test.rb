require "application_system_test_case"

class GoodiesJvsTest < ApplicationSystemTestCase
  setup do
    @_goodies_jv = _goodies_jvs(:one)
  end

  test "visiting the index" do
    visit _goodies_jvs_url
    assert_selector "h1", text: "Goodies jvs"
  end

  test "should create goodies jv" do
    visit _goodies_jvs_url
    click_on "New goodies jv"

    fill_in "Name", with: @_goodies_jv.name
    click_on "Create Goodies jv"

    assert_text "Goodies jv was successfully created"
    click_on "Back"
  end

  test "should update Goodies jv" do
    visit _goodies_jv_url(@_goodies_jv)
    click_on "Edit this goodies jv", match: :first

    fill_in "Name", with: @_goodies_jv.name
    click_on "Update Goodies jv"

    assert_text "Goodies jv was successfully updated"
    click_on "Back"
  end

  test "should destroy Goodies jv" do
    visit _goodies_jv_url(@_goodies_jv)
    click_on "Destroy this goodies jv", match: :first

    assert_text "Goodies jv was successfully destroyed"
  end
end
