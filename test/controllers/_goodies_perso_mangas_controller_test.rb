require "test_helper"

class GoodiesPersoMangasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_perso_manga = _goodies_perso_mangas(:one)
  end

  test "should get index" do
    get _goodies_perso_mangas_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_perso_manga_url
    assert_response :success
  end

  test "should create _goodies_perso_manga" do
    assert_difference("GoodiesPersoManga.count") do
      post _goodies_perso_mangas_url, params: { _goodies_perso_manga: { name: @_goodies_perso_manga.name } }
    end

    assert_redirected_to _goodies_perso_manga_url(GoodiesPersoManga.last)
  end

  test "should show _goodies_perso_manga" do
    get _goodies_perso_manga_url(@_goodies_perso_manga)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_perso_manga_url(@_goodies_perso_manga)
    assert_response :success
  end

  test "should update _goodies_perso_manga" do
    patch _goodies_perso_manga_url(@_goodies_perso_manga), params: { _goodies_perso_manga: { name: @_goodies_perso_manga.name } }
    assert_redirected_to _goodies_perso_manga_url(@_goodies_perso_manga)
  end

  test "should destroy _goodies_perso_manga" do
    assert_difference("GoodiesPersoManga.count", -1) do
      delete _goodies_perso_manga_url(@_goodies_perso_manga)
    end

    assert_redirected_to _goodies_perso_mangas_url
  end
end
