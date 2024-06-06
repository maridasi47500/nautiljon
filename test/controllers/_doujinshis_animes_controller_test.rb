require "test_helper"

class DoujinshisAnimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_anime = _doujinshis_animes(:one)
  end

  test "should get index" do
    get _doujinshis_animes_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_anime_url
    assert_response :success
  end

  test "should create _doujinshis_anime" do
    assert_difference("DoujinshisAnime.count") do
      post _doujinshis_animes_url, params: { _doujinshis_anime: { name: @_doujinshis_anime.name } }
    end

    assert_redirected_to _doujinshis_anime_url(DoujinshisAnime.last)
  end

  test "should show _doujinshis_anime" do
    get _doujinshis_anime_url(@_doujinshis_anime)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_anime_url(@_doujinshis_anime)
    assert_response :success
  end

  test "should update _doujinshis_anime" do
    patch _doujinshis_anime_url(@_doujinshis_anime), params: { _doujinshis_anime: { name: @_doujinshis_anime.name } }
    assert_redirected_to _doujinshis_anime_url(@_doujinshis_anime)
  end

  test "should destroy _doujinshis_anime" do
    assert_difference("DoujinshisAnime.count", -1) do
      delete _doujinshis_anime_url(@_doujinshis_anime)
    end

    assert_redirected_to _doujinshis_animes_url
  end
end
