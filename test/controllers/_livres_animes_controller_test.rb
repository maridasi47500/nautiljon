require "test_helper"

class LivresAnimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_anime = _livres_animes(:one)
  end

  test "should get index" do
    get _livres_animes_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_anime_url
    assert_response :success
  end

  test "should create _livres_anime" do
    assert_difference("LivresAnime.count") do
      post _livres_animes_url, params: { _livres_anime: { name: @_livres_anime.name } }
    end

    assert_redirected_to _livres_anime_url(LivresAnime.last)
  end

  test "should show _livres_anime" do
    get _livres_anime_url(@_livres_anime)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_anime_url(@_livres_anime)
    assert_response :success
  end

  test "should update _livres_anime" do
    patch _livres_anime_url(@_livres_anime), params: { _livres_anime: { name: @_livres_anime.name } }
    assert_redirected_to _livres_anime_url(@_livres_anime)
  end

  test "should destroy _livres_anime" do
    assert_difference("LivresAnime.count", -1) do
      delete _livres_anime_url(@_livres_anime)
    end

    assert_redirected_to _livres_animes_url
  end
end
