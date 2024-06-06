require "application_system_test_case"

class PersonnageDeMangasTest < ApplicationSystemTestCase
  setup do
    @_personnage_de_manga = _personnage_de_mangas(:one)
  end

  test "visiting the index" do
    visit _personnage_de_mangas_url
    assert_selector "h1", text: "Personnage de mangas"
  end

  test "should create personnage de manga" do
    visit _personnage_de_mangas_url
    click_on "New personnage de manga"

    fill_in "Personnage de mangas goodies", with: @_personnage_de_manga._personnage_de_mangas_goodies_id
    fill_in "Personnage de mangas jv perso", with: @_personnage_de_manga._personnage_de_mangas_jv_perso_id
    fill_in "Personnage de mangas manga", with: @_personnage_de_manga._personnage_de_mangas_manga_id
    fill_in "Personnage de mangas perso", with: @_personnage_de_manga._personnage_de_mangas_perso_id
    fill_in "Personnage de mangas perso manga", with: @_personnage_de_manga._personnage_de_mangas_perso_manga_id
    fill_in "Personnage de mangas perso plus", with: @_personnage_de_manga._personnage_de_mangas_perso_plus_id
    fill_in "Acceptregles", with: @_personnage_de_manga.acceptregles
    fill_in "Comment", with: @_personnage_de_manga.comment
    fill_in "Description", with: @_personnage_de_manga.description
    fill_in "Image", with: @_personnage_de_manga.image
    fill_in "Nom", with: @_personnage_de_manga.nom
    fill_in "Nom alternatif", with: @_personnage_de_manga.nom_alternatif
    fill_in "Nom original", with: @_personnage_de_manga.nom_original
    fill_in "Nom suite", with: @_personnage_de_manga.nom_suite
    fill_in "Statut prop", with: @_personnage_de_manga.statut_prop
    click_on "Create Personnage de manga"

    assert_text "Personnage de manga was successfully created"
    click_on "Back"
  end

  test "should update Personnage de manga" do
    visit _personnage_de_manga_url(@_personnage_de_manga)
    click_on "Edit this personnage de manga", match: :first

    fill_in "Personnage de mangas goodies", with: @_personnage_de_manga._personnage_de_mangas_goodies_id
    fill_in "Personnage de mangas jv perso", with: @_personnage_de_manga._personnage_de_mangas_jv_perso_id
    fill_in "Personnage de mangas manga", with: @_personnage_de_manga._personnage_de_mangas_manga_id
    fill_in "Personnage de mangas perso", with: @_personnage_de_manga._personnage_de_mangas_perso_id
    fill_in "Personnage de mangas perso manga", with: @_personnage_de_manga._personnage_de_mangas_perso_manga_id
    fill_in "Personnage de mangas perso plus", with: @_personnage_de_manga._personnage_de_mangas_perso_plus_id
    fill_in "Acceptregles", with: @_personnage_de_manga.acceptregles
    fill_in "Comment", with: @_personnage_de_manga.comment
    fill_in "Description", with: @_personnage_de_manga.description
    fill_in "Image", with: @_personnage_de_manga.image
    fill_in "Nom", with: @_personnage_de_manga.nom
    fill_in "Nom alternatif", with: @_personnage_de_manga.nom_alternatif
    fill_in "Nom original", with: @_personnage_de_manga.nom_original
    fill_in "Nom suite", with: @_personnage_de_manga.nom_suite
    fill_in "Statut prop", with: @_personnage_de_manga.statut_prop
    click_on "Update Personnage de manga"

    assert_text "Personnage de manga was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnage de manga" do
    visit _personnage_de_manga_url(@_personnage_de_manga)
    click_on "Destroy this personnage de manga", match: :first

    assert_text "Personnage de manga was successfully destroyed"
  end
end
