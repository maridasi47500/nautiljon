require "application_system_test_case"

class GeneriquesTest < ApplicationSystemTestCase
  setup do
    @_generique = _generiques(:one)
  end

  test "visiting the index" do
    visit _generiques_url
    assert_selector "h1", text: "Generiques"
  end

  test "should create generique" do
    visit _generiques_url
    click_on "New generique"

    fill_in "Generiques generic", with: @_generique._generiques_generic_id
    fill_in "Generiques id anime", with: @_generique._generiques_id_anime_id
    fill_in "Generiques staff people", with: @_generique._generiques_staff_people_id
    fill_in "Generiques staff role", with: @_generique._generiques_staff_role_id
    fill_in "Generiques type", with: @_generique._generiques_type_id
    fill_in "Acceptregles", with: @_generique.acceptregles
    fill_in "Comment", with: @_generique.comment
    fill_in "Date aaaa", with: @_generique.date_aaaa
    fill_in "Date jj", with: @_generique.date_jj
    fill_in "Date mm", with: @_generique.date_mm
    fill_in "Description", with: @_generique.description
    fill_in "Episodes", with: @_generique.episodes
    fill_in "Instrumental", with: @_generique.instrumental
    fill_in "Membre show", with: @_generique.membre_show
    fill_in "Number", with: @_generique.number
    fill_in "Paroles", with: @_generique.paroles
    fill_in "Paroles trad", with: @_generique.paroles_trad
    fill_in "Statut prop", with: @_generique.statut_prop
    fill_in "Titre", with: @_generique.titre
    fill_in "Titre original", with: @_generique.titre_original
    fill_in "Youtube", with: @_generique.youtube
    click_on "Create Generique"

    assert_text "Generique was successfully created"
    click_on "Back"
  end

  test "should update Generique" do
    visit _generique_url(@_generique)
    click_on "Edit this generique", match: :first

    fill_in "Generiques generic", with: @_generique._generiques_generic_id
    fill_in "Generiques id anime", with: @_generique._generiques_id_anime_id
    fill_in "Generiques staff people", with: @_generique._generiques_staff_people_id
    fill_in "Generiques staff role", with: @_generique._generiques_staff_role_id
    fill_in "Generiques type", with: @_generique._generiques_type_id
    fill_in "Acceptregles", with: @_generique.acceptregles
    fill_in "Comment", with: @_generique.comment
    fill_in "Date aaaa", with: @_generique.date_aaaa
    fill_in "Date jj", with: @_generique.date_jj
    fill_in "Date mm", with: @_generique.date_mm
    fill_in "Description", with: @_generique.description
    fill_in "Episodes", with: @_generique.episodes
    fill_in "Instrumental", with: @_generique.instrumental
    fill_in "Membre show", with: @_generique.membre_show
    fill_in "Number", with: @_generique.number
    fill_in "Paroles", with: @_generique.paroles
    fill_in "Paroles trad", with: @_generique.paroles_trad
    fill_in "Statut prop", with: @_generique.statut_prop
    fill_in "Titre", with: @_generique.titre
    fill_in "Titre original", with: @_generique.titre_original
    fill_in "Youtube", with: @_generique.youtube
    click_on "Update Generique"

    assert_text "Generique was successfully updated"
    click_on "Back"
  end

  test "should destroy Generique" do
    visit _generique_url(@_generique)
    click_on "Destroy this generique", match: :first

    assert_text "Generique was successfully destroyed"
  end
end
