require "application_system_test_case"

class BrevesEmissionTvNumerosTest < ApplicationSystemTestCase
  setup do
    @_breves_emission_tv_numero = _breves_emission_tv_numeros(:one)
  end

  test "visiting the index" do
    visit _breves_emission_tv_numeros_url
    assert_selector "h1", text: "Breves emission tv numeros"
  end

  test "should create breves emission tv numero" do
    visit _breves_emission_tv_numeros_url
    click_on "New breves emission tv numero"

    fill_in "Name", with: @_breves_emission_tv_numero.name
    click_on "Create Breves emission tv numero"

    assert_text "Breves emission tv numero was successfully created"
    click_on "Back"
  end

  test "should update Breves emission tv numero" do
    visit _breves_emission_tv_numero_url(@_breves_emission_tv_numero)
    click_on "Edit this breves emission tv numero", match: :first

    fill_in "Name", with: @_breves_emission_tv_numero.name
    click_on "Update Breves emission tv numero"

    assert_text "Breves emission tv numero was successfully updated"
    click_on "Back"
  end

  test "should destroy Breves emission tv numero" do
    visit _breves_emission_tv_numero_url(@_breves_emission_tv_numero)
    click_on "Destroy this breves emission tv numero", match: :first

    assert_text "Breves emission tv numero was successfully destroyed"
  end
end
