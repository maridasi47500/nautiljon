require "application_system_test_case"

class Clips::Lives::Bonus::ConcertsEmissionTvNumerosTest < ApplicationSystemTestCase
  setup do
    @_clips___lives___bonus___concerts_emission_tv_numero = _clips___lives___bonus___concerts_emission_tv_numeros(:one)
  end

  test "visiting the index" do
    visit _clips___lives___bonus___concerts_emission_tv_numeros_url
    assert_selector "h1", text: "Concerts emission tv numeros"
  end

  test "should create concerts emission tv numero" do
    visit _clips___lives___bonus___concerts_emission_tv_numeros_url
    click_on "New concerts emission tv numero"

    fill_in "Name", with: @_clips___lives___bonus___concerts_emission_tv_numero.name
    click_on "Create Concerts emission tv numero"

    assert_text "Concerts emission tv numero was successfully created"
    click_on "Back"
  end

  test "should update Concerts emission tv numero" do
    visit _clips___lives___bonus___concerts_emission_tv_numero_url(@_clips___lives___bonus___concerts_emission_tv_numero)
    click_on "Edit this concerts emission tv numero", match: :first

    fill_in "Name", with: @_clips___lives___bonus___concerts_emission_tv_numero.name
    click_on "Update Concerts emission tv numero"

    assert_text "Concerts emission tv numero was successfully updated"
    click_on "Back"
  end

  test "should destroy Concerts emission tv numero" do
    visit _clips___lives___bonus___concerts_emission_tv_numero_url(@_clips___lives___bonus___concerts_emission_tv_numero)
    click_on "Destroy this concerts emission tv numero", match: :first

    assert_text "Concerts emission tv numero was successfully destroyed"
  end
end
