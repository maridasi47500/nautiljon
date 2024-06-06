require "test_helper"

class GoodiesAnimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_anime = _goodies_animes(:one)
  end

  test "should get index" do
    get _goodies_animes_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_anime_url
    assert_response :success
  end

  test "should create _goodies_anime" do
    assert_difference("GoodiesAnime.count") do
      post _goodies_animes_url, params: { _goodies_anime: { name: @_goodies_anime.name } }
    end

    assert_redirected_to _goodies_anime_url(GoodiesAnime.last)
  end

  test "should show _goodies_anime" do
    get _goodies_anime_url(@_goodies_anime)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_anime_url(@_goodies_anime)
    assert_response :success
  end

  test "should update _goodies_anime" do
    patch _goodies_anime_url(@_goodies_anime), params: { _goodies_anime: { name: @_goodies_anime.name } }
    assert_redirected_to _goodies_anime_url(@_goodies_anime)
  end

  test "should destroy _goodies_anime" do
    assert_difference("GoodiesAnime.count", -1) do
      delete _goodies_anime_url(@_goodies_anime)
    end

    assert_redirected_to _goodies_animes_url
  end
end
