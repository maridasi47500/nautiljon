require "application_system_test_case"

class ParolesTest < ApplicationSystemTestCase
  setup do
    @_parole = _paroles(:one)
  end

  test "visiting the index" do
    visit _paroles_url
    assert_selector "h1", text: "Paroles"
  end

  test "should create parole" do
    visit _paroles_url
    click_on "New parole"

    fill_in "Paroles parole", with: @_parole._paroles_parole_id
    fill_in "Paroles staff people", with: @_parole._paroles_staff_people_id
    fill_in "Paroles staff role", with: @_parole._paroles_staff_role_id
    fill_in "Acceptregles", with: @_parole.acceptregles
    fill_in "Comment", with: @_parole.comment
    fill_in "Description", with: @_parole.description
    fill_in "Instrumental", with: @_parole.instrumental
    fill_in "Membre show", with: @_parole.membre_show
    fill_in "Paroles", with: @_parole.paroles
    fill_in "Paroles trad", with: @_parole.paroles_trad
    fill_in "Source", with: @_parole.source
    fill_in "Statut prop", with: @_parole.statut_prop
    fill_in "Titre", with: @_parole.titre
    fill_in "Titre alternatif", with: @_parole.titre_alternatif
    fill_in "Titre original", with: @_parole.titre_original
    fill_in "Titre original latin", with: @_parole.titre_original_latin
    click_on "Create Parole"

    assert_text "Parole was successfully created"
    click_on "Back"
  end

  test "should update Parole" do
    visit _parole_url(@_parole)
    click_on "Edit this parole", match: :first

    fill_in "Paroles parole", with: @_parole._paroles_parole_id
    fill_in "Paroles staff people", with: @_parole._paroles_staff_people_id
    fill_in "Paroles staff role", with: @_parole._paroles_staff_role_id
    fill_in "Acceptregles", with: @_parole.acceptregles
    fill_in "Comment", with: @_parole.comment
    fill_in "Description", with: @_parole.description
    fill_in "Instrumental", with: @_parole.instrumental
    fill_in "Membre show", with: @_parole.membre_show
    fill_in "Paroles", with: @_parole.paroles
    fill_in "Paroles trad", with: @_parole.paroles_trad
    fill_in "Source", with: @_parole.source
    fill_in "Statut prop", with: @_parole.statut_prop
    fill_in "Titre", with: @_parole.titre
    fill_in "Titre alternatif", with: @_parole.titre_alternatif
    fill_in "Titre original", with: @_parole.titre_original
    fill_in "Titre original latin", with: @_parole.titre_original_latin
    click_on "Update Parole"

    assert_text "Parole was successfully updated"
    click_on "Back"
  end

  test "should destroy Parole" do
    visit _parole_url(@_parole)
    click_on "Destroy this parole", match: :first

    assert_text "Parole was successfully destroyed"
  end
end
