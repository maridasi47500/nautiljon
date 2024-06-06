require "test_helper"

class FicheUniversPersoMangasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_fiche_univers_perso_manga = _fiche_univers_perso_mangas(:one)
  end

  test "should get index" do
    get _fiche_univers_perso_mangas_url
    assert_response :success
  end

  test "should get new" do
    get new__fiche_univers_perso_manga_url
    assert_response :success
  end

  test "should create _fiche_univers_perso_manga" do
    assert_difference("FicheUniversPersoManga.count") do
      post _fiche_univers_perso_mangas_url, params: { _fiche_univers_perso_manga: { name: @_fiche_univers_perso_manga.name } }
    end

    assert_redirected_to _fiche_univers_perso_manga_url(FicheUniversPersoManga.last)
  end

  test "should show _fiche_univers_perso_manga" do
    get _fiche_univers_perso_manga_url(@_fiche_univers_perso_manga)
    assert_response :success
  end

  test "should get edit" do
    get edit__fiche_univers_perso_manga_url(@_fiche_univers_perso_manga)
    assert_response :success
  end

  test "should update _fiche_univers_perso_manga" do
    patch _fiche_univers_perso_manga_url(@_fiche_univers_perso_manga), params: { _fiche_univers_perso_manga: { name: @_fiche_univers_perso_manga.name } }
    assert_redirected_to _fiche_univers_perso_manga_url(@_fiche_univers_perso_manga)
  end

  test "should destroy _fiche_univers_perso_manga" do
    assert_difference("FicheUniversPersoManga.count", -1) do
      delete _fiche_univers_perso_manga_url(@_fiche_univers_perso_manga)
    end

    assert_redirected_to _fiche_univers_perso_mangas_url
  end
end
