require "test_helper"

class FicheUniversMangasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_fiche_univers_manga = _fiche_univers_mangas(:one)
  end

  test "should get index" do
    get _fiche_univers_mangas_url
    assert_response :success
  end

  test "should get new" do
    get new__fiche_univers_manga_url
    assert_response :success
  end

  test "should create _fiche_univers_manga" do
    assert_difference("FicheUniversManga.count") do
      post _fiche_univers_mangas_url, params: { _fiche_univers_manga: { name: @_fiche_univers_manga.name } }
    end

    assert_redirected_to _fiche_univers_manga_url(FicheUniversManga.last)
  end

  test "should show _fiche_univers_manga" do
    get _fiche_univers_manga_url(@_fiche_univers_manga)
    assert_response :success
  end

  test "should get edit" do
    get edit__fiche_univers_manga_url(@_fiche_univers_manga)
    assert_response :success
  end

  test "should update _fiche_univers_manga" do
    patch _fiche_univers_manga_url(@_fiche_univers_manga), params: { _fiche_univers_manga: { name: @_fiche_univers_manga.name } }
    assert_redirected_to _fiche_univers_manga_url(@_fiche_univers_manga)
  end

  test "should destroy _fiche_univers_manga" do
    assert_difference("FicheUniversManga.count", -1) do
      delete _fiche_univers_manga_url(@_fiche_univers_manga)
    end

    assert_redirected_to _fiche_univers_mangas_url
  end
end
