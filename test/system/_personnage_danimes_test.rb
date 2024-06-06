require "application_system_test_case"

class PersonnageDanimesTest < ApplicationSystemTestCase
  setup do
    @_personnage_danime = _personnage_danimes(:one)
  end

  test "visiting the index" do
    visit _personnage_danimes_url
    assert_selector "h1", text: "Personnage danimes"
  end

  test "should create personnage danime" do
    visit _personnage_danimes_url
    click_on "New personnage danime"

    fill_in "", with: @_personnage_danime.
    fill_in "Personnage danimes anime", with: @_personnage_danime._personnage_danimes_anime_id
    fill_in "Personnage danimes doubleur pays", with: @_personnage_danime._personnage_danimes_doubleur_pays_id
    fill_in "Personnage danimes doubleur people", with: @_personnage_danime._personnage_danimes_doubleur_people_id
    fill_in "Personnage danimes doubleur role", with: @_personnage_danime._personnage_danimes_doubleur_role_id
    fill_in "Personnage danimes goodies", with: @_personnage_danime._personnage_danimes_goodies_id
    fill_in "Personnage danimes jv perso", with: @_personnage_danime._personnage_danimes_jv_perso_id
    fill_in "Personnage danimes perso", with: @_personnage_danime._personnage_danimes_perso_id
    fill_in "Personnage danimes perso manga", with: @_personnage_danime._personnage_danimes_perso_manga_id
    fill_in "Personnage danimes perso plus", with: @_personnage_danime._personnage_danimes_perso_plus_id
    fill_in "Personnage danimes sexe", with: @_personnage_danime._personnage_danimes_sexe_id
    fill_in "Acceptregles", with: @_personnage_danime.acceptregles
    fill_in "Comment", with: @_personnage_danime.comment
    fill_in "Description", with: @_personnage_danime.description
    fill_in "Image", with: @_personnage_danime.image
    fill_in "Nom", with: @_personnage_danime.nom
    fill_in "Nom alternatif", with: @_personnage_danime.nom_alternatif
    fill_in "Nom original", with: @_personnage_danime.nom_original
    fill_in "Nom suite", with: @_personnage_danime.nom_suite
    fill_in "Special", with: @_personnage_danime.special
    fill_in "Statut prop", with: @_personnage_danime.statut_prop
    click_on "Create Personnage danime"

    assert_text "Personnage danime was successfully created"
    click_on "Back"
  end

  test "should update Personnage danime" do
    visit _personnage_danime_url(@_personnage_danime)
    click_on "Edit this personnage danime", match: :first

    fill_in "", with: @_personnage_danime.
    fill_in "Personnage danimes anime", with: @_personnage_danime._personnage_danimes_anime_id
    fill_in "Personnage danimes doubleur pays", with: @_personnage_danime._personnage_danimes_doubleur_pays_id
    fill_in "Personnage danimes doubleur people", with: @_personnage_danime._personnage_danimes_doubleur_people_id
    fill_in "Personnage danimes doubleur role", with: @_personnage_danime._personnage_danimes_doubleur_role_id
    fill_in "Personnage danimes goodies", with: @_personnage_danime._personnage_danimes_goodies_id
    fill_in "Personnage danimes jv perso", with: @_personnage_danime._personnage_danimes_jv_perso_id
    fill_in "Personnage danimes perso", with: @_personnage_danime._personnage_danimes_perso_id
    fill_in "Personnage danimes perso manga", with: @_personnage_danime._personnage_danimes_perso_manga_id
    fill_in "Personnage danimes perso plus", with: @_personnage_danime._personnage_danimes_perso_plus_id
    fill_in "Personnage danimes sexe", with: @_personnage_danime._personnage_danimes_sexe_id
    fill_in "Acceptregles", with: @_personnage_danime.acceptregles
    fill_in "Comment", with: @_personnage_danime.comment
    fill_in "Description", with: @_personnage_danime.description
    fill_in "Image", with: @_personnage_danime.image
    fill_in "Nom", with: @_personnage_danime.nom
    fill_in "Nom alternatif", with: @_personnage_danime.nom_alternatif
    fill_in "Nom original", with: @_personnage_danime.nom_original
    fill_in "Nom suite", with: @_personnage_danime.nom_suite
    fill_in "Special", with: @_personnage_danime.special
    fill_in "Statut prop", with: @_personnage_danime.statut_prop
    click_on "Update Personnage danime"

    assert_text "Personnage danime was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnage danime" do
    visit _personnage_danime_url(@_personnage_danime)
    click_on "Destroy this personnage danime", match: :first

    assert_text "Personnage danime was successfully destroyed"
  end
end
