require "test_helper"

class PersonnageDeMangasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnage_de_manga = _personnage_de_mangas(:one)
  end

  test "should get index" do
    get _personnage_de_mangas_url
    assert_response :success
  end

  test "should get new" do
    get new__personnage_de_manga_url
    assert_response :success
  end

  test "should create _personnage_de_manga" do
    assert_difference("PersonnageDeManga.count") do
      post _personnage_de_mangas_url, params: { _personnage_de_manga: { _personnage_de_mangas_goodies_id: @_personnage_de_manga._personnage_de_mangas_goodies_id, _personnage_de_mangas_jv_perso_id: @_personnage_de_manga._personnage_de_mangas_jv_perso_id, _personnage_de_mangas_manga_id: @_personnage_de_manga._personnage_de_mangas_manga_id, _personnage_de_mangas_perso_id: @_personnage_de_manga._personnage_de_mangas_perso_id, _personnage_de_mangas_perso_manga_id: @_personnage_de_manga._personnage_de_mangas_perso_manga_id, _personnage_de_mangas_perso_plus_id: @_personnage_de_manga._personnage_de_mangas_perso_plus_id, acceptregles: @_personnage_de_manga.acceptregles, comment: @_personnage_de_manga.comment, description: @_personnage_de_manga.description, image: @_personnage_de_manga.image, nom: @_personnage_de_manga.nom, nom_alternatif: @_personnage_de_manga.nom_alternatif, nom_original: @_personnage_de_manga.nom_original, nom_suite: @_personnage_de_manga.nom_suite, statut_prop: @_personnage_de_manga.statut_prop } }
    end

    assert_redirected_to _personnage_de_manga_url(PersonnageDeManga.last)
  end

  test "should show _personnage_de_manga" do
    get _personnage_de_manga_url(@_personnage_de_manga)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnage_de_manga_url(@_personnage_de_manga)
    assert_response :success
  end

  test "should update _personnage_de_manga" do
    patch _personnage_de_manga_url(@_personnage_de_manga), params: { _personnage_de_manga: { _personnage_de_mangas_goodies_id: @_personnage_de_manga._personnage_de_mangas_goodies_id, _personnage_de_mangas_jv_perso_id: @_personnage_de_manga._personnage_de_mangas_jv_perso_id, _personnage_de_mangas_manga_id: @_personnage_de_manga._personnage_de_mangas_manga_id, _personnage_de_mangas_perso_id: @_personnage_de_manga._personnage_de_mangas_perso_id, _personnage_de_mangas_perso_manga_id: @_personnage_de_manga._personnage_de_mangas_perso_manga_id, _personnage_de_mangas_perso_plus_id: @_personnage_de_manga._personnage_de_mangas_perso_plus_id, acceptregles: @_personnage_de_manga.acceptregles, comment: @_personnage_de_manga.comment, description: @_personnage_de_manga.description, image: @_personnage_de_manga.image, nom: @_personnage_de_manga.nom, nom_alternatif: @_personnage_de_manga.nom_alternatif, nom_original: @_personnage_de_manga.nom_original, nom_suite: @_personnage_de_manga.nom_suite, statut_prop: @_personnage_de_manga.statut_prop } }
    assert_redirected_to _personnage_de_manga_url(@_personnage_de_manga)
  end

  test "should destroy _personnage_de_manga" do
    assert_difference("PersonnageDeManga.count", -1) do
      delete _personnage_de_manga_url(@_personnage_de_manga)
    end

    assert_redirected_to _personnage_de_mangas_url
  end
end
