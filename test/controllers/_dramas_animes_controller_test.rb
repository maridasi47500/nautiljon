require "test_helper"

class DramasAnimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_anime = _dramas_animes(:one)
  end

  test "should get index" do
    get _dramas_animes_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_anime_url
    assert_response :success
  end

  test "should create _dramas_anime" do
    assert_difference("DramasAnime.count") do
      post _dramas_animes_url, params: { _dramas_anime: { name: @_dramas_anime.name } }
    end

    assert_redirected_to _dramas_anime_url(DramasAnime.last)
  end

  test "should show _dramas_anime" do
    get _dramas_anime_url(@_dramas_anime)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_anime_url(@_dramas_anime)
    assert_response :success
  end

  test "should update _dramas_anime" do
    patch _dramas_anime_url(@_dramas_anime), params: { _dramas_anime: { name: @_dramas_anime.name } }
    assert_redirected_to _dramas_anime_url(@_dramas_anime)
  end

  test "should destroy _dramas_anime" do
    assert_difference("DramasAnime.count", -1) do
      delete _dramas_anime_url(@_dramas_anime)
    end

    assert_redirected_to _dramas_animes_url
  end
end
