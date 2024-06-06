require "application_system_test_case"

class NumeroDemissionTvsPresentateursTest < ApplicationSystemTestCase
  setup do
    @_numero_demission_tvs_presentateur = _numero_demission_tvs_presentateurs(:one)
  end

  test "visiting the index" do
    visit _numero_demission_tvs_presentateurs_url
    assert_selector "h1", text: "Numero demission tvs presentateurs"
  end

  test "should create numero demission tvs presentateur" do
    visit _numero_demission_tvs_presentateurs_url
    click_on "New numero demission tvs presentateur"

    fill_in "Name", with: @_numero_demission_tvs_presentateur.name
    click_on "Create Numero demission tvs presentateur"

    assert_text "Numero demission tvs presentateur was successfully created"
    click_on "Back"
  end

  test "should update Numero demission tvs presentateur" do
    visit _numero_demission_tvs_presentateur_url(@_numero_demission_tvs_presentateur)
    click_on "Edit this numero demission tvs presentateur", match: :first

    fill_in "Name", with: @_numero_demission_tvs_presentateur.name
    click_on "Update Numero demission tvs presentateur"

    assert_text "Numero demission tvs presentateur was successfully updated"
    click_on "Back"
  end

  test "should destroy Numero demission tvs presentateur" do
    visit _numero_demission_tvs_presentateur_url(@_numero_demission_tvs_presentateur)
    click_on "Destroy this numero demission tvs presentateur", match: :first

    assert_text "Numero demission tvs presentateur was successfully destroyed"
  end
end
