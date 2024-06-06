require "test_helper"

class PersonnalitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnalite = _personnalites(:one)
  end

  test "should get index" do
    get _personnalites_url
    assert_response :success
  end

  test "should get new" do
    get new__personnalite_url
    assert_response :success
  end

  test "should create _personnalite" do
    assert_difference("Personnalite.count") do
      post _personnalites_url, params: { _personnalite: { _personnalites_agences_debut_id: @_personnalite._personnalites_agences_debut_id, _personnalites_agences_ex_id: @_personnalite._personnalites_agences_ex_id, _personnalites_agences_fin_id: @_personnalite._personnalites_agences_fin_id, _personnalites_agences_id: @_personnalite._personnalites_agences_id, _personnalites_ex_debut_id: @_personnalite._personnalites_ex_debut_id, _personnalites_ex_fin_id: @_personnalite._personnalites_ex_fin_id, _personnalites_ex_id: @_personnalite._personnalites_ex_id, _personnalites_genres_id: @_personnalite._personnalites_genres_id, _personnalites_id_galerie_id: @_personnalite._personnalites_id_galerie_id, _personnalites_id_membre_id: @_personnalite._personnalites_id_membre_id, _personnalites_id_travaux_id: @_personnalite._personnalites_id_travaux_id, _personnalites_labels_debut_id: @_personnalite._personnalites_labels_debut_id, _personnalites_labels_ex_id: @_personnalite._personnalites_labels_ex_id, _personnalites_labels_fin_id: @_personnalite._personnalites_labels_fin_id, _personnalites_labels_id: @_personnalite._personnalites_labels_id, _personnalites_pays_id: @_personnalite._personnalites_pays_id, _personnalites_people_id: @_personnalite._personnalites_people_id, _personnalites_people_plus_id: @_personnalite._personnalites_people_plus_id, _personnalites_roles_id: @_personnalite._personnalites_roles_id, _personnalites_sexe_id: @_personnalite._personnalites_sexe_id, _personnalites_statut_id: @_personnalite._personnalites_statut_id, _personnalites_type_people_id: @_personnalite._personnalites_type_people_id, acceptregles: @_personnalite.acceptregles, bio: @_personnalite.bio, comment: @_personnalite.comment, date_deces_aaaa: @_personnalite.date_deces_aaaa, date_deces_jj: @_personnalite.date_deces_jj, date_deces_mm: @_personnalite.date_deces_mm, date_nais_aaaa: @_personnalite.date_nais_aaaa, date_nais_jj: @_personnalite.date_nais_jj, date_nais_mm: @_personnalite.date_nais_mm, debut: @_personnalite.debut, decede: @_personnalite.decede, fin: @_personnalite.fin, image: @_personnalite.image, liaison_auto_cosplay: @_personnalite.liaison_auto_cosplay, liaison_auto_galerie: @_personnalite.liaison_auto_galerie, nom: @_personnalite.nom, nom_alternatif: @_personnalite.nom_alternatif, nom_alternatif_suite: @_personnalite.nom_alternatif_suite, nom_original: @_personnalite.nom_original, nom_original_2: @_personnalite.nom_original_2, nom_original_3: @_personnalite.nom_original_3, nom_original_4: @_personnalite.nom_original_4, nom_original_latin: @_personnalite.nom_original_latin, statut_prop: @_personnalite.statut_prop } }
    end

    assert_redirected_to _personnalite_url(Personnalite.last)
  end

  test "should show _personnalite" do
    get _personnalite_url(@_personnalite)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnalite_url(@_personnalite)
    assert_response :success
  end

  test "should update _personnalite" do
    patch _personnalite_url(@_personnalite), params: { _personnalite: { _personnalites_agences_debut_id: @_personnalite._personnalites_agences_debut_id, _personnalites_agences_ex_id: @_personnalite._personnalites_agences_ex_id, _personnalites_agences_fin_id: @_personnalite._personnalites_agences_fin_id, _personnalites_agences_id: @_personnalite._personnalites_agences_id, _personnalites_ex_debut_id: @_personnalite._personnalites_ex_debut_id, _personnalites_ex_fin_id: @_personnalite._personnalites_ex_fin_id, _personnalites_ex_id: @_personnalite._personnalites_ex_id, _personnalites_genres_id: @_personnalite._personnalites_genres_id, _personnalites_id_galerie_id: @_personnalite._personnalites_id_galerie_id, _personnalites_id_membre_id: @_personnalite._personnalites_id_membre_id, _personnalites_id_travaux_id: @_personnalite._personnalites_id_travaux_id, _personnalites_labels_debut_id: @_personnalite._personnalites_labels_debut_id, _personnalites_labels_ex_id: @_personnalite._personnalites_labels_ex_id, _personnalites_labels_fin_id: @_personnalite._personnalites_labels_fin_id, _personnalites_labels_id: @_personnalite._personnalites_labels_id, _personnalites_pays_id: @_personnalite._personnalites_pays_id, _personnalites_people_id: @_personnalite._personnalites_people_id, _personnalites_people_plus_id: @_personnalite._personnalites_people_plus_id, _personnalites_roles_id: @_personnalite._personnalites_roles_id, _personnalites_sexe_id: @_personnalite._personnalites_sexe_id, _personnalites_statut_id: @_personnalite._personnalites_statut_id, _personnalites_type_people_id: @_personnalite._personnalites_type_people_id, acceptregles: @_personnalite.acceptregles, bio: @_personnalite.bio, comment: @_personnalite.comment, date_deces_aaaa: @_personnalite.date_deces_aaaa, date_deces_jj: @_personnalite.date_deces_jj, date_deces_mm: @_personnalite.date_deces_mm, date_nais_aaaa: @_personnalite.date_nais_aaaa, date_nais_jj: @_personnalite.date_nais_jj, date_nais_mm: @_personnalite.date_nais_mm, debut: @_personnalite.debut, decede: @_personnalite.decede, fin: @_personnalite.fin, image: @_personnalite.image, liaison_auto_cosplay: @_personnalite.liaison_auto_cosplay, liaison_auto_galerie: @_personnalite.liaison_auto_galerie, nom: @_personnalite.nom, nom_alternatif: @_personnalite.nom_alternatif, nom_alternatif_suite: @_personnalite.nom_alternatif_suite, nom_original: @_personnalite.nom_original, nom_original_2: @_personnalite.nom_original_2, nom_original_3: @_personnalite.nom_original_3, nom_original_4: @_personnalite.nom_original_4, nom_original_latin: @_personnalite.nom_original_latin, statut_prop: @_personnalite.statut_prop } }
    assert_redirected_to _personnalite_url(@_personnalite)
  end

  test "should destroy _personnalite" do
    assert_difference("Personnalite.count", -1) do
      delete _personnalite_url(@_personnalite)
    end

    assert_redirected_to _personnalites_url
  end
end
