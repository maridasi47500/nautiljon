require "test_helper"

class PhotobooksAnimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_photobooks_anime = _photobooks_animes(:one)
  end

  test "should get index" do
    get _photobooks_animes_url
    assert_response :success
  end

  test "should get new" do
    get new__photobooks_anime_url
    assert_response :success
  end

  test "should create _photobooks_anime" do
    assert_difference("PhotobooksAnime.count") do
      post _photobooks_animes_url, params: { _photobooks_anime: { name: @_photobooks_anime.name } }
    end

    assert_redirected_to _photobooks_anime_url(PhotobooksAnime.last)
  end

  test "should show _photobooks_anime" do
    get _photobooks_anime_url(@_photobooks_anime)
    assert_response :success
  end

  test "should get edit" do
    get edit__photobooks_anime_url(@_photobooks_anime)
    assert_response :success
  end

  test "should update _photobooks_anime" do
    patch _photobooks_anime_url(@_photobooks_anime), params: { _photobooks_anime: { name: @_photobooks_anime.name } }
    assert_redirected_to _photobooks_anime_url(@_photobooks_anime)
  end

  test "should destroy _photobooks_anime" do
    assert_difference("PhotobooksAnime.count", -1) do
      delete _photobooks_anime_url(@_photobooks_anime)
    end

    assert_redirected_to _photobooks_animes_url
  end
end
