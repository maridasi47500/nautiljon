require "application_system_test_case"

class PersonnalitesTest < ApplicationSystemTestCase
  setup do
    @_personnalite = _personnalites(:one)
  end

  test "visiting the index" do
    visit _personnalites_url
    assert_selector "h1", text: "Personnalites"
  end

  test "should create personnalite" do
    visit _personnalites_url
    click_on "New personnalite"

    fill_in "Personnalites agences debut", with: @_personnalite._personnalites_agences_debut_id
    fill_in "Personnalites agences ex", with: @_personnalite._personnalites_agences_ex_id
    fill_in "Personnalites agences fin", with: @_personnalite._personnalites_agences_fin_id
    fill_in "Personnalites agences", with: @_personnalite._personnalites_agences_id
    fill_in "Personnalites ex debut", with: @_personnalite._personnalites_ex_debut_id
    fill_in "Personnalites ex fin", with: @_personnalite._personnalites_ex_fin_id
    fill_in "Personnalites ex", with: @_personnalite._personnalites_ex_id
    fill_in "Personnalites genres", with: @_personnalite._personnalites_genres_id
    fill_in "Personnalites id galerie", with: @_personnalite._personnalites_id_galerie_id
    fill_in "Personnalites id membre", with: @_personnalite._personnalites_id_membre_id
    fill_in "Personnalites id travaux", with: @_personnalite._personnalites_id_travaux_id
    fill_in "Personnalites labels debut", with: @_personnalite._personnalites_labels_debut_id
    fill_in "Personnalites labels ex", with: @_personnalite._personnalites_labels_ex_id
    fill_in "Personnalites labels fin", with: @_personnalite._personnalites_labels_fin_id
    fill_in "Personnalites labels", with: @_personnalite._personnalites_labels_id
    fill_in "Personnalites pays", with: @_personnalite._personnalites_pays_id
    fill_in "Personnalites people", with: @_personnalite._personnalites_people_id
    fill_in "Personnalites people plus", with: @_personnalite._personnalites_people_plus_id
    fill_in "Personnalites roles", with: @_personnalite._personnalites_roles_id
    fill_in "Personnalites sexe", with: @_personnalite._personnalites_sexe_id
    fill_in "Personnalites statut", with: @_personnalite._personnalites_statut_id
    fill_in "Personnalites type people", with: @_personnalite._personnalites_type_people_id
    fill_in "Acceptregles", with: @_personnalite.acceptregles
    fill_in "Bio", with: @_personnalite.bio
    fill_in "Comment", with: @_personnalite.comment
    fill_in "Date deces aaaa", with: @_personnalite.date_deces_aaaa
    fill_in "Date deces jj", with: @_personnalite.date_deces_jj
    fill_in "Date deces mm", with: @_personnalite.date_deces_mm
    fill_in "Date nais aaaa", with: @_personnalite.date_nais_aaaa
    fill_in "Date nais jj", with: @_personnalite.date_nais_jj
    fill_in "Date nais mm", with: @_personnalite.date_nais_mm
    fill_in "Debut", with: @_personnalite.debut
    fill_in "Decede", with: @_personnalite.decede
    fill_in "Fin", with: @_personnalite.fin
    fill_in "Image", with: @_personnalite.image
    fill_in "Liaison auto cosplay", with: @_personnalite.liaison_auto_cosplay
    fill_in "Liaison auto galerie", with: @_personnalite.liaison_auto_galerie
    fill_in "Nom", with: @_personnalite.nom
    fill_in "Nom alternatif", with: @_personnalite.nom_alternatif
    fill_in "Nom alternatif suite", with: @_personnalite.nom_alternatif_suite
    fill_in "Nom original", with: @_personnalite.nom_original
    fill_in "Nom original 2", with: @_personnalite.nom_original_2
    fill_in "Nom original 3", with: @_personnalite.nom_original_3
    fill_in "Nom original 4", with: @_personnalite.nom_original_4
    fill_in "Nom original latin", with: @_personnalite.nom_original_latin
    fill_in "Statut prop", with: @_personnalite.statut_prop
    click_on "Create Personnalite"

    assert_text "Personnalite was successfully created"
    click_on "Back"
  end

  test "should update Personnalite" do
    visit _personnalite_url(@_personnalite)
    click_on "Edit this personnalite", match: :first

    fill_in "Personnalites agences debut", with: @_personnalite._personnalites_agences_debut_id
    fill_in "Personnalites agences ex", with: @_personnalite._personnalites_agences_ex_id
    fill_in "Personnalites agences fin", with: @_personnalite._personnalites_agences_fin_id
    fill_in "Personnalites agences", with: @_personnalite._personnalites_agences_id
    fill_in "Personnalites ex debut", with: @_personnalite._personnalites_ex_debut_id
    fill_in "Personnalites ex fin", with: @_personnalite._personnalites_ex_fin_id
    fill_in "Personnalites ex", with: @_personnalite._personnalites_ex_id
    fill_in "Personnalites genres", with: @_personnalite._personnalites_genres_id
    fill_in "Personnalites id galerie", with: @_personnalite._personnalites_id_galerie_id
    fill_in "Personnalites id membre", with: @_personnalite._personnalites_id_membre_id
    fill_in "Personnalites id travaux", with: @_personnalite._personnalites_id_travaux_id
    fill_in "Personnalites labels debut", with: @_personnalite._personnalites_labels_debut_id
    fill_in "Personnalites labels ex", with: @_personnalite._personnalites_labels_ex_id
    fill_in "Personnalites labels fin", with: @_personnalite._personnalites_labels_fin_id
    fill_in "Personnalites labels", with: @_personnalite._personnalites_labels_id
    fill_in "Personnalites pays", with: @_personnalite._personnalites_pays_id
    fill_in "Personnalites people", with: @_personnalite._personnalites_people_id
    fill_in "Personnalites people plus", with: @_personnalite._personnalites_people_plus_id
    fill_in "Personnalites roles", with: @_personnalite._personnalites_roles_id
    fill_in "Personnalites sexe", with: @_personnalite._personnalites_sexe_id
    fill_in "Personnalites statut", with: @_personnalite._personnalites_statut_id
    fill_in "Personnalites type people", with: @_personnalite._personnalites_type_people_id
    fill_in "Acceptregles", with: @_personnalite.acceptregles
    fill_in "Bio", with: @_personnalite.bio
    fill_in "Comment", with: @_personnalite.comment
    fill_in "Date deces aaaa", with: @_personnalite.date_deces_aaaa
    fill_in "Date deces jj", with: @_personnalite.date_deces_jj
    fill_in "Date deces mm", with: @_personnalite.date_deces_mm
    fill_in "Date nais aaaa", with: @_personnalite.date_nais_aaaa
    fill_in "Date nais jj", with: @_personnalite.date_nais_jj
    fill_in "Date nais mm", with: @_personnalite.date_nais_mm
    fill_in "Debut", with: @_personnalite.debut
    fill_in "Decede", with: @_personnalite.decede
    fill_in "Fin", with: @_personnalite.fin
    fill_in "Image", with: @_personnalite.image
    fill_in "Liaison auto cosplay", with: @_personnalite.liaison_auto_cosplay
    fill_in "Liaison auto galerie", with: @_personnalite.liaison_auto_galerie
    fill_in "Nom", with: @_personnalite.nom
    fill_in "Nom alternatif", with: @_personnalite.nom_alternatif
    fill_in "Nom alternatif suite", with: @_personnalite.nom_alternatif_suite
    fill_in "Nom original", with: @_personnalite.nom_original
    fill_in "Nom original 2", with: @_personnalite.nom_original_2
    fill_in "Nom original 3", with: @_personnalite.nom_original_3
    fill_in "Nom original 4", with: @_personnalite.nom_original_4
    fill_in "Nom original latin", with: @_personnalite.nom_original_latin
    fill_in "Statut prop", with: @_personnalite.statut_prop
    click_on "Update Personnalite"

    assert_text "Personnalite was successfully updated"
    click_on "Back"
  end

  test "should destroy Personnalite" do
    visit _personnalite_url(@_personnalite)
    click_on "Destroy this personnalite", match: :first

    assert_text "Personnalite was successfully destroyed"
  end
end
