require "test_helper"

class DoujinshisPersoMangasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_perso_manga = _doujinshis_perso_mangas(:one)
  end

  test "should get index" do
    get _doujinshis_perso_mangas_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_perso_manga_url
    assert_response :success
  end

  test "should create _doujinshis_perso_manga" do
    assert_difference("DoujinshisPersoManga.count") do
      post _doujinshis_perso_mangas_url, params: { _doujinshis_perso_manga: { name: @_doujinshis_perso_manga.name } }
    end

    assert_redirected_to _doujinshis_perso_manga_url(DoujinshisPersoManga.last)
  end

  test "should show _doujinshis_perso_manga" do
    get _doujinshis_perso_manga_url(@_doujinshis_perso_manga)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_perso_manga_url(@_doujinshis_perso_manga)
    assert_response :success
  end

  test "should update _doujinshis_perso_manga" do
    patch _doujinshis_perso_manga_url(@_doujinshis_perso_manga), params: { _doujinshis_perso_manga: { name: @_doujinshis_perso_manga.name } }
    assert_redirected_to _doujinshis_perso_manga_url(@_doujinshis_perso_manga)
  end

  test "should destroy _doujinshis_perso_manga" do
    assert_difference("DoujinshisPersoManga.count", -1) do
      delete _doujinshis_perso_manga_url(@_doujinshis_perso_manga)
    end

    assert_redirected_to _doujinshis_perso_mangas_url
  end
end
