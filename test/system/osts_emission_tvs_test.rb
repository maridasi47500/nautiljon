require "application_system_test_case"

class OstsEmissionTvsTest < ApplicationSystemTestCase
  setup do
    @osts_emission_tv = osts_emission_tvs(:one)
  end

  test "visiting the index" do
    visit osts_emission_tvs_url
    assert_selector "h1", text: "Osts emission tvs"
  end

  test "should create osts emission tv" do
    visit osts_emission_tvs_url
    click_on "New osts emission tv"

    fill_in "Name", with: @osts_emission_tv.name
    click_on "Create Osts emission tv"

    assert_text "Osts emission tv was successfully created"
    click_on "Back"
  end

  test "should update Osts emission tv" do
    visit osts_emission_tv_url(@osts_emission_tv)
    click_on "Edit this osts emission tv", match: :first

    fill_in "Name", with: @osts_emission_tv.name
    click_on "Update Osts emission tv"

    assert_text "Osts emission tv was successfully updated"
    click_on "Back"
  end

  test "should destroy Osts emission tv" do
    visit osts_emission_tv_url(@osts_emission_tv)
    click_on "Destroy this osts emission tv", match: :first

    assert_text "Osts emission tv was successfully destroyed"
  end
end
