require "test_helper"

class Dvd::BluRaysAnimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dvd___blu_rays_anime = _dvd___blu_rays_animes(:one)
  end

  test "should get index" do
    get _dvd___blu_rays_animes_url
    assert_response :success
  end

  test "should get new" do
    get new__dvd___blu_rays_anime_url
    assert_response :success
  end

  test "should create _dvd___blu_rays_anime" do
    assert_difference("Dvd::BluRaysAnime.count") do
      post _dvd___blu_rays_animes_url, params: { _dvd___blu_rays_anime: { name: @_dvd___blu_rays_anime.name } }
    end

    assert_redirected_to _dvd___blu_rays_anime_url(Dvd::BluRaysAnime.last)
  end

  test "should show _dvd___blu_rays_anime" do
    get _dvd___blu_rays_anime_url(@_dvd___blu_rays_anime)
    assert_response :success
  end

  test "should get edit" do
    get edit__dvd___blu_rays_anime_url(@_dvd___blu_rays_anime)
    assert_response :success
  end

  test "should update _dvd___blu_rays_anime" do
    patch _dvd___blu_rays_anime_url(@_dvd___blu_rays_anime), params: { _dvd___blu_rays_anime: { name: @_dvd___blu_rays_anime.name } }
    assert_redirected_to _dvd___blu_rays_anime_url(@_dvd___blu_rays_anime)
  end

  test "should destroy _dvd___blu_rays_anime" do
    assert_difference("Dvd::BluRaysAnime.count", -1) do
      delete _dvd___blu_rays_anime_url(@_dvd___blu_rays_anime)
    end

    assert_redirected_to _dvd___blu_rays_animes_url
  end
end
