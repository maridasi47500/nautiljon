require "test_helper"

class AmvsAnimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @amvs_anime = amvs_animes(:one)
  end

  test "should get index" do
    get amvs_animes_url
    assert_response :success
  end

  test "should get new" do
    get new_amvs_anime_url
    assert_response :success
  end

  test "should create amvs_anime" do
    assert_difference("AmvsAnime.count") do
      post amvs_animes_url, params: { amvs_anime: { name: @amvs_anime.name } }
    end

    assert_redirected_to amvs_anime_url(AmvsAnime.last)
  end

  test "should show amvs_anime" do
    get amvs_anime_url(@amvs_anime)
    assert_response :success
  end

  test "should get edit" do
    get edit_amvs_anime_url(@amvs_anime)
    assert_response :success
  end

  test "should update amvs_anime" do
    patch amvs_anime_url(@amvs_anime), params: { amvs_anime: { name: @amvs_anime.name } }
    assert_redirected_to amvs_anime_url(@amvs_anime)
  end

  test "should destroy amvs_anime" do
    assert_difference("AmvsAnime.count", -1) do
      delete amvs_anime_url(@amvs_anime)
    end

    assert_redirected_to amvs_animes_url
  end
end
