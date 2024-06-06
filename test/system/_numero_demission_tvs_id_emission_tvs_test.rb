require "application_system_test_case"

class NumeroDemissionTvsIdEmissionTvsTest < ApplicationSystemTestCase
  setup do
    @_numero_demission_tvs_id_emission_tv = _numero_demission_tvs_id_emission_tvs(:one)
  end

  test "visiting the index" do
    visit _numero_demission_tvs_id_emission_tvs_url
    assert_selector "h1", text: "Numero demission tvs id emission tvs"
  end

  test "should create numero demission tvs id emission tv" do
    visit _numero_demission_tvs_id_emission_tvs_url
    click_on "New numero demission tvs id emission tv"

    fill_in "Name", with: @_numero_demission_tvs_id_emission_tv.name
    click_on "Create Numero demission tvs id emission tv"

    assert_text "Numero demission tvs id emission tv was successfully created"
    click_on "Back"
  end

  test "should update Numero demission tvs id emission tv" do
    visit _numero_demission_tvs_id_emission_tv_url(@_numero_demission_tvs_id_emission_tv)
    click_on "Edit this numero demission tvs id emission tv", match: :first

    fill_in "Name", with: @_numero_demission_tvs_id_emission_tv.name
    click_on "Update Numero demission tvs id emission tv"

    assert_text "Numero demission tvs id emission tv was successfully updated"
    click_on "Back"
  end

  test "should destroy Numero demission tvs id emission tv" do
    visit _numero_demission_tvs_id_emission_tv_url(@_numero_demission_tvs_id_emission_tv)
    click_on "Destroy this numero demission tvs id emission tv", match: :first

    assert_text "Numero demission tvs id emission tv was successfully destroyed"
  end
end
