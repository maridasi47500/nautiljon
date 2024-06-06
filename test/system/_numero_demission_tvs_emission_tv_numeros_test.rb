require "application_system_test_case"

class NumeroDemissionTvsEmissionTvNumerosTest < ApplicationSystemTestCase
  setup do
    @_numero_demission_tvs_emission_tv_numero = _numero_demission_tvs_emission_tv_numeros(:one)
  end

  test "visiting the index" do
    visit _numero_demission_tvs_emission_tv_numeros_url
    assert_selector "h1", text: "Numero demission tvs emission tv numeros"
  end

  test "should create numero demission tvs emission tv numero" do
    visit _numero_demission_tvs_emission_tv_numeros_url
    click_on "New numero demission tvs emission tv numero"

    fill_in "Name", with: @_numero_demission_tvs_emission_tv_numero.name
    click_on "Create Numero demission tvs emission tv numero"

    assert_text "Numero demission tvs emission tv numero was successfully created"
    click_on "Back"
  end

  test "should update Numero demission tvs emission tv numero" do
    visit _numero_demission_tvs_emission_tv_numero_url(@_numero_demission_tvs_emission_tv_numero)
    click_on "Edit this numero demission tvs emission tv numero", match: :first

    fill_in "Name", with: @_numero_demission_tvs_emission_tv_numero.name
    click_on "Update Numero demission tvs emission tv numero"

    assert_text "Numero demission tvs emission tv numero was successfully updated"
    click_on "Back"
  end

  test "should destroy Numero demission tvs emission tv numero" do
    visit _numero_demission_tvs_emission_tv_numero_url(@_numero_demission_tvs_emission_tv_numero)
    click_on "Destroy this numero demission tvs emission tv numero", match: :first

    assert_text "Numero demission tvs emission tv numero was successfully destroyed"
  end
end
