require "application_system_test_case"

class AmvsJvsTest < ApplicationSystemTestCase
  setup do
    @amvs_jv = amvs_jvs(:one)
  end

  test "visiting the index" do
    visit amvs_jvs_url
    assert_selector "h1", text: "Amvs jvs"
  end

  test "should create amvs jv" do
    visit amvs_jvs_url
    click_on "New amvs jv"

    fill_in "Name", with: @amvs_jv.name
    click_on "Create Amvs jv"

    assert_text "Amvs jv was successfully created"
    click_on "Back"
  end

  test "should update Amvs jv" do
    visit amvs_jv_url(@amvs_jv)
    click_on "Edit this amvs jv", match: :first

    fill_in "Name", with: @amvs_jv.name
    click_on "Update Amvs jv"

    assert_text "Amvs jv was successfully updated"
    click_on "Back"
  end

  test "should destroy Amvs jv" do
    visit amvs_jv_url(@amvs_jv)
    click_on "Destroy this amvs jv", match: :first

    assert_text "Amvs jv was successfully destroyed"
  end
end
