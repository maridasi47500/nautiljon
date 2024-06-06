require "application_system_test_case"

class AmvsAmvsTest < ApplicationSystemTestCase
  setup do
    @amvs_amv = amvs_amvs(:one)
  end

  test "visiting the index" do
    visit amvs_amvs_url
    assert_selector "h1", text: "Amvs amvs"
  end

  test "should create amvs amv" do
    visit amvs_amvs_url
    click_on "New amvs amv"

    fill_in "Name", with: @amvs_amv.name
    click_on "Create Amvs amv"

    assert_text "Amvs amv was successfully created"
    click_on "Back"
  end

  test "should update Amvs amv" do
    visit amvs_amv_url(@amvs_amv)
    click_on "Edit this amvs amv", match: :first

    fill_in "Name", with: @amvs_amv.name
    click_on "Update Amvs amv"

    assert_text "Amvs amv was successfully updated"
    click_on "Back"
  end

  test "should destroy Amvs amv" do
    visit amvs_amv_url(@amvs_amv)
    click_on "Destroy this amvs amv", match: :first

    assert_text "Amvs amv was successfully destroyed"
  end
end
