require "test_helper"

class BrevesAnimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_anime = _breves_animes(:one)
  end

  test "should get index" do
    get _breves_animes_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_anime_url
    assert_response :success
  end

  test "should create _breves_anime" do
    assert_difference("BrevesAnime.count") do
      post _breves_animes_url, params: { _breves_anime: { name: @_breves_anime.name } }
    end

    assert_redirected_to _breves_anime_url(BrevesAnime.last)
  end

  test "should show _breves_anime" do
    get _breves_anime_url(@_breves_anime)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_anime_url(@_breves_anime)
    assert_response :success
  end

  test "should update _breves_anime" do
    patch _breves_anime_url(@_breves_anime), params: { _breves_anime: { name: @_breves_anime.name } }
    assert_redirected_to _breves_anime_url(@_breves_anime)
  end

  test "should destroy _breves_anime" do
    assert_difference("BrevesAnime.count", -1) do
      delete _breves_anime_url(@_breves_anime)
    end

    assert_redirected_to _breves_animes_url
  end
end
