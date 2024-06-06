require "application_system_test_case"

class CdsJvsTest < ApplicationSystemTestCase
  setup do
    @_cds_jv = _cds_jvs(:one)
  end

  test "visiting the index" do
    visit _cds_jvs_url
    assert_selector "h1", text: "Cds jvs"
  end

  test "should create cds jv" do
    visit _cds_jvs_url
    click_on "New cds jv"

    fill_in "Name", with: @_cds_jv.name
    click_on "Create Cds jv"

    assert_text "Cds jv was successfully created"
    click_on "Back"
  end

  test "should update Cds jv" do
    visit _cds_jv_url(@_cds_jv)
    click_on "Edit this cds jv", match: :first

    fill_in "Name", with: @_cds_jv.name
    click_on "Update Cds jv"

    assert_text "Cds jv was successfully updated"
    click_on "Back"
  end

  test "should destroy Cds jv" do
    visit _cds_jv_url(@_cds_jv)
    click_on "Destroy this cds jv", match: :first

    assert_text "Cds jv was successfully destroyed"
  end
end
