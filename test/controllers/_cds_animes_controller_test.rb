require "test_helper"

class CdsAnimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_cds_anime = _cds_animes(:one)
  end

  test "should get index" do
    get _cds_animes_url
    assert_response :success
  end

  test "should get new" do
    get new__cds_anime_url
    assert_response :success
  end

  test "should create _cds_anime" do
    assert_difference("CdsAnime.count") do
      post _cds_animes_url, params: { _cds_anime: { name: @_cds_anime.name } }
    end

    assert_redirected_to _cds_anime_url(CdsAnime.last)
  end

  test "should show _cds_anime" do
    get _cds_anime_url(@_cds_anime)
    assert_response :success
  end

  test "should get edit" do
    get edit__cds_anime_url(@_cds_anime)
    assert_response :success
  end

  test "should update _cds_anime" do
    patch _cds_anime_url(@_cds_anime), params: { _cds_anime: { name: @_cds_anime.name } }
    assert_redirected_to _cds_anime_url(@_cds_anime)
  end

  test "should destroy _cds_anime" do
    assert_difference("CdsAnime.count", -1) do
      delete _cds_anime_url(@_cds_anime)
    end

    assert_redirected_to _cds_animes_url
  end
end
