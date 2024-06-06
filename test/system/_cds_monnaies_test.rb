require "application_system_test_case"

class CdsMonnaiesTest < ApplicationSystemTestCase
  setup do
    @_cds_monnaie = _cds_monnaies(:one)
  end

  test "visiting the index" do
    visit _cds_monnaies_url
    assert_selector "h1", text: "Cds monnaies"
  end

  test "should create cds monnaie" do
    visit _cds_monnaies_url
    click_on "New cds monnaie"

    fill_in "Name", with: @_cds_monnaie.name
    click_on "Create Cds monnaie"

    assert_text "Cds monnaie was successfully created"
    click_on "Back"
  end

  test "should update Cds monnaie" do
    visit _cds_monnaie_url(@_cds_monnaie)
    click_on "Edit this cds monnaie", match: :first

    fill_in "Name", with: @_cds_monnaie.name
    click_on "Update Cds monnaie"

    assert_text "Cds monnaie was successfully updated"
    click_on "Back"
  end

  test "should destroy Cds monnaie" do
    visit _cds_monnaie_url(@_cds_monnaie)
    click_on "Destroy this cds monnaie", match: :first

    assert_text "Cds monnaie was successfully destroyed"
  end
end
