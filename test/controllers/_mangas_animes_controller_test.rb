require "test_helper"

class MangasAnimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_anime = _mangas_animes(:one)
  end

  test "should get index" do
    get _mangas_animes_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_anime_url
    assert_response :success
  end

  test "should create _mangas_anime" do
    assert_difference("MangasAnime.count") do
      post _mangas_animes_url, params: { _mangas_anime: { name: @_mangas_anime.name } }
    end

    assert_redirected_to _mangas_anime_url(MangasAnime.last)
  end

  test "should show _mangas_anime" do
    get _mangas_anime_url(@_mangas_anime)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_anime_url(@_mangas_anime)
    assert_response :success
  end

  test "should update _mangas_anime" do
    patch _mangas_anime_url(@_mangas_anime), params: { _mangas_anime: { name: @_mangas_anime.name } }
    assert_redirected_to _mangas_anime_url(@_mangas_anime)
  end

  test "should destroy _mangas_anime" do
    assert_difference("MangasAnime.count", -1) do
      delete _mangas_anime_url(@_mangas_anime)
    end

    assert_redirected_to _mangas_animes_url
  end
end
