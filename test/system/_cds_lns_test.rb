require "application_system_test_case"

class CdsLnsTest < ApplicationSystemTestCase
  setup do
    @_cds_ln = _cds_lns(:one)
  end

  test "visiting the index" do
    visit _cds_lns_url
    assert_selector "h1", text: "Cds lns"
  end

  test "should create cds ln" do
    visit _cds_lns_url
    click_on "New cds ln"

    fill_in "Name", with: @_cds_ln.name
    click_on "Create Cds ln"

    assert_text "Cds ln was successfully created"
    click_on "Back"
  end

  test "should update Cds ln" do
    visit _cds_ln_url(@_cds_ln)
    click_on "Edit this cds ln", match: :first

    fill_in "Name", with: @_cds_ln.name
    click_on "Update Cds ln"

    assert_text "Cds ln was successfully updated"
    click_on "Back"
  end

  test "should destroy Cds ln" do
    visit _cds_ln_url(@_cds_ln)
    click_on "Destroy this cds ln", match: :first

    assert_text "Cds ln was successfully destroyed"
  end
end
