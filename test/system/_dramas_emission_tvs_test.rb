require "application_system_test_case"

class DramasEmissionTvsTest < ApplicationSystemTestCase
  setup do
    @_dramas_emission_tv = _dramas_emission_tvs(:one)
  end

  test "visiting the index" do
    visit _dramas_emission_tvs_url
    assert_selector "h1", text: "Dramas emission tvs"
  end

  test "should create dramas emission tv" do
    visit _dramas_emission_tvs_url
    click_on "New dramas emission tv"

    fill_in "Name", with: @_dramas_emission_tv.name
    click_on "Create Dramas emission tv"

    assert_text "Dramas emission tv was successfully created"
    click_on "Back"
  end

  test "should update Dramas emission tv" do
    visit _dramas_emission_tv_url(@_dramas_emission_tv)
    click_on "Edit this dramas emission tv", match: :first

    fill_in "Name", with: @_dramas_emission_tv.name
    click_on "Update Dramas emission tv"

    assert_text "Dramas emission tv was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas emission tv" do
    visit _dramas_emission_tv_url(@_dramas_emission_tv)
    click_on "Destroy this dramas emission tv", match: :first

    assert_text "Dramas emission tv was successfully destroyed"
  end
end
