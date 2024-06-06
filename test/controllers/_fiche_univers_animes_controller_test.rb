require "test_helper"

class FicheUniversAnimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_fiche_univers_anime = _fiche_univers_animes(:one)
  end

  test "should get index" do
    get _fiche_univers_animes_url
    assert_response :success
  end

  test "should get new" do
    get new__fiche_univers_anime_url
    assert_response :success
  end

  test "should create _fiche_univers_anime" do
    assert_difference("FicheUniversAnime.count") do
      post _fiche_univers_animes_url, params: { _fiche_univers_anime: { name: @_fiche_univers_anime.name } }
    end

    assert_redirected_to _fiche_univers_anime_url(FicheUniversAnime.last)
  end

  test "should show _fiche_univers_anime" do
    get _fiche_univers_anime_url(@_fiche_univers_anime)
    assert_response :success
  end

  test "should get edit" do
    get edit__fiche_univers_anime_url(@_fiche_univers_anime)
    assert_response :success
  end

  test "should update _fiche_univers_anime" do
    patch _fiche_univers_anime_url(@_fiche_univers_anime), params: { _fiche_univers_anime: { name: @_fiche_univers_anime.name } }
    assert_redirected_to _fiche_univers_anime_url(@_fiche_univers_anime)
  end

  test "should destroy _fiche_univers_anime" do
    assert_difference("FicheUniversAnime.count", -1) do
      delete _fiche_univers_anime_url(@_fiche_univers_anime)
    end

    assert_redirected_to _fiche_univers_animes_url
  end
end
