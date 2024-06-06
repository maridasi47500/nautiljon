require "application_system_test_case"

class DramasEmissionTvPlusTest < ApplicationSystemTestCase
  setup do
    @_dramas_emission_tv_plu = _dramas_emission_tv_plus(:one)
  end

  test "visiting the index" do
    visit _dramas_emission_tv_plus_url
    assert_selector "h1", text: "Dramas emission tv plus"
  end

  test "should create dramas emission tv plu" do
    visit _dramas_emission_tv_plus_url
    click_on "New dramas emission tv plu"

    fill_in "Name", with: @_dramas_emission_tv_plu.name
    click_on "Create Dramas emission tv plu"

    assert_text "Dramas emission tv plu was successfully created"
    click_on "Back"
  end

  test "should update Dramas emission tv plu" do
    visit _dramas_emission_tv_plu_url(@_dramas_emission_tv_plu)
    click_on "Edit this dramas emission tv plu", match: :first

    fill_in "Name", with: @_dramas_emission_tv_plu.name
    click_on "Update Dramas emission tv plu"

    assert_text "Dramas emission tv plu was successfully updated"
    click_on "Back"
  end

  test "should destroy Dramas emission tv plu" do
    visit _dramas_emission_tv_plu_url(@_dramas_emission_tv_plu)
    click_on "Destroy this dramas emission tv plu", match: :first

    assert_text "Dramas emission tv plu was successfully destroyed"
  end
end
