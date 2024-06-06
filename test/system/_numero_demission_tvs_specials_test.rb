require "application_system_test_case"

class NumeroDemissionTvsSpecialsTest < ApplicationSystemTestCase
  setup do
    @_numero_demission_tvs_special = _numero_demission_tvs_specials(:one)
  end

  test "visiting the index" do
    visit _numero_demission_tvs_specials_url
    assert_selector "h1", text: "Numero demission tvs specials"
  end

  test "should create numero demission tvs special" do
    visit _numero_demission_tvs_specials_url
    click_on "New numero demission tvs special"

    fill_in "Name", with: @_numero_demission_tvs_special.name
    click_on "Create Numero demission tvs special"

    assert_text "Numero demission tvs special was successfully created"
    click_on "Back"
  end

  test "should update Numero demission tvs special" do
    visit _numero_demission_tvs_special_url(@_numero_demission_tvs_special)
    click_on "Edit this numero demission tvs special", match: :first

    fill_in "Name", with: @_numero_demission_tvs_special.name
    click_on "Update Numero demission tvs special"

    assert_text "Numero demission tvs special was successfully updated"
    click_on "Back"
  end

  test "should destroy Numero demission tvs special" do
    visit _numero_demission_tvs_special_url(@_numero_demission_tvs_special)
    click_on "Destroy this numero demission tvs special", match: :first

    assert_text "Numero demission tvs special was successfully destroyed"
  end
end
