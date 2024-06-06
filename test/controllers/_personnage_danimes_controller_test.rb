require "test_helper"

class PersonnageDanimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnage_danime = _personnage_danimes(:one)
  end

  test "should get index" do
    get _personnage_danimes_url
    assert_response :success
  end

  test "should get new" do
    get new__personnage_danime_url
    assert_response :success
  end

  test "should create _personnage_danime" do
    assert_difference("PersonnageDanime.count") do
      post _personnage_danimes_url, params: { _personnage_danime: { : @_personnage_danime., _personnage_danimes_anime_id: @_personnage_danime._personnage_danimes_anime_id, _personnage_danimes_doubleur_pays_id: @_personnage_danime._personnage_danimes_doubleur_pays_id, _personnage_danimes_doubleur_people_id: @_personnage_danime._personnage_danimes_doubleur_people_id, _personnage_danimes_doubleur_role_id: @_personnage_danime._personnage_danimes_doubleur_role_id, _personnage_danimes_goodies_id: @_personnage_danime._personnage_danimes_goodies_id, _personnage_danimes_jv_perso_id: @_personnage_danime._personnage_danimes_jv_perso_id, _personnage_danimes_perso_id: @_personnage_danime._personnage_danimes_perso_id, _personnage_danimes_perso_manga_id: @_personnage_danime._personnage_danimes_perso_manga_id, _personnage_danimes_perso_plus_id: @_personnage_danime._personnage_danimes_perso_plus_id, _personnage_danimes_sexe_id: @_personnage_danime._personnage_danimes_sexe_id, acceptregles: @_personnage_danime.acceptregles, comment: @_personnage_danime.comment, description: @_personnage_danime.description, image: @_personnage_danime.image, nom: @_personnage_danime.nom, nom_alternatif: @_personnage_danime.nom_alternatif, nom_original: @_personnage_danime.nom_original, nom_suite: @_personnage_danime.nom_suite, special: @_personnage_danime.special, statut_prop: @_personnage_danime.statut_prop } }
    end

    assert_redirected_to _personnage_danime_url(PersonnageDanime.last)
  end

  test "should show _personnage_danime" do
    get _personnage_danime_url(@_personnage_danime)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnage_danime_url(@_personnage_danime)
    assert_response :success
  end

  test "should update _personnage_danime" do
    patch _personnage_danime_url(@_personnage_danime), params: { _personnage_danime: { : @_personnage_danime., _personnage_danimes_anime_id: @_personnage_danime._personnage_danimes_anime_id, _personnage_danimes_doubleur_pays_id: @_personnage_danime._personnage_danimes_doubleur_pays_id, _personnage_danimes_doubleur_people_id: @_personnage_danime._personnage_danimes_doubleur_people_id, _personnage_danimes_doubleur_role_id: @_personnage_danime._personnage_danimes_doubleur_role_id, _personnage_danimes_goodies_id: @_personnage_danime._personnage_danimes_goodies_id, _personnage_danimes_jv_perso_id: @_personnage_danime._personnage_danimes_jv_perso_id, _personnage_danimes_perso_id: @_personnage_danime._personnage_danimes_perso_id, _personnage_danimes_perso_manga_id: @_personnage_danime._personnage_danimes_perso_manga_id, _personnage_danimes_perso_plus_id: @_personnage_danime._personnage_danimes_perso_plus_id, _personnage_danimes_sexe_id: @_personnage_danime._personnage_danimes_sexe_id, acceptregles: @_personnage_danime.acceptregles, comment: @_personnage_danime.comment, description: @_personnage_danime.description, image: @_personnage_danime.image, nom: @_personnage_danime.nom, nom_alternatif: @_personnage_danime.nom_alternatif, nom_original: @_personnage_danime.nom_original, nom_suite: @_personnage_danime.nom_suite, special: @_personnage_danime.special, statut_prop: @_personnage_danime.statut_prop } }
    assert_redirected_to _personnage_danime_url(@_personnage_danime)
  end

  test "should destroy _personnage_danime" do
    assert_difference("PersonnageDanime.count", -1) do
      delete _personnage_danime_url(@_personnage_danime)
    end

    assert_redirected_to _personnage_danimes_url
  end
end
