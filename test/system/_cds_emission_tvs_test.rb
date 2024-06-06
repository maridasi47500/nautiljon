require "application_system_test_case"

class CdsEmissionTvsTest < ApplicationSystemTestCase
  setup do
    @_cds_emission_tv = _cds_emission_tvs(:one)
  end

  test "visiting the index" do
    visit _cds_emission_tvs_url
    assert_selector "h1", text: "Cds emission tvs"
  end

  test "should create cds emission tv" do
    visit _cds_emission_tvs_url
    click_on "New cds emission tv"

    fill_in "Name", with: @_cds_emission_tv.name
    click_on "Create Cds emission tv"

    assert_text "Cds emission tv was successfully created"
    click_on "Back"
  end

  test "should update Cds emission tv" do
    visit _cds_emission_tv_url(@_cds_emission_tv)
    click_on "Edit this cds emission tv", match: :first

    fill_in "Name", with: @_cds_emission_tv.name
    click_on "Update Cds emission tv"

    assert_text "Cds emission tv was successfully updated"
    click_on "Back"
  end

  test "should destroy Cds emission tv" do
    visit _cds_emission_tv_url(@_cds_emission_tv)
    click_on "Destroy this cds emission tv", match: :first

    assert_text "Cds emission tv was successfully destroyed"
  end
end
