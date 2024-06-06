require "application_system_test_case"

class BrevesEmissionTvsTest < ApplicationSystemTestCase
  setup do
    @_breves_emission_tv = _breves_emission_tvs(:one)
  end

  test "visiting the index" do
    visit _breves_emission_tvs_url
    assert_selector "h1", text: "Breves emission tvs"
  end

  test "should create breves emission tv" do
    visit _breves_emission_tvs_url
    click_on "New breves emission tv"

    fill_in "Name", with: @_breves_emission_tv.name
    click_on "Create Breves emission tv"

    assert_text "Breves emission tv was successfully created"
    click_on "Back"
  end

  test "should update Breves emission tv" do
    visit _breves_emission_tv_url(@_breves_emission_tv)
    click_on "Edit this breves emission tv", match: :first

    fill_in "Name", with: @_breves_emission_tv.name
    click_on "Update Breves emission tv"

    assert_text "Breves emission tv was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves emission tv" do
    visit _breves_emission_tv_url(@_breves_emission_tv)
    click_on "Destroy this breves emission tv", match: :first

    assert_text "Breves emission tv was successfully destroyed"
  end
end
