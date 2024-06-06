require "test_helper"

class DoujinsAnimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujins_anime = _doujins_animes(:one)
  end

  test "should get index" do
    get _doujins_animes_url
    assert_response :success
  end

  test "should get new" do
    get new__doujins_anime_url
    assert_response :success
  end

  test "should create _doujins_anime" do
    assert_difference("DoujinsAnime.count") do
      post _doujins_animes_url, params: { _doujins_anime: { name: @_doujins_anime.name } }
    end

    assert_redirected_to _doujins_anime_url(DoujinsAnime.last)
  end

  test "should show _doujins_anime" do
    get _doujins_anime_url(@_doujins_anime)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujins_anime_url(@_doujins_anime)
    assert_response :success
  end

  test "should update _doujins_anime" do
    patch _doujins_anime_url(@_doujins_anime), params: { _doujins_anime: { name: @_doujins_anime.name } }
    assert_redirected_to _doujins_anime_url(@_doujins_anime)
  end

  test "should destroy _doujins_anime" do
    assert_difference("DoujinsAnime.count", -1) do
      delete _doujins_anime_url(@_doujins_anime)
    end

    assert_redirected_to _doujins_animes_url
  end
end
