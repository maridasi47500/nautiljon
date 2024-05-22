require "test_helper"

class OstsAnimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @osts_anime = osts_animes(:one)
  end

  test "should get index" do
    get osts_animes_url
    assert_response :success
  end

  test "should get new" do
    get new_osts_anime_url
    assert_response :success
  end

  test "should create osts_anime" do
    assert_difference("OstsAnime.count") do
      post osts_animes_url, params: { osts_anime: { name: @osts_anime.name } }
    end

    assert_redirected_to osts_anime_url(OstsAnime.last)
  end

  test "should show osts_anime" do
    get osts_anime_url(@osts_anime)
    assert_response :success
  end

  test "should get edit" do
    get edit_osts_anime_url(@osts_anime)
    assert_response :success
  end

  test "should update osts_anime" do
    patch osts_anime_url(@osts_anime), params: { osts_anime: { name: @osts_anime.name } }
    assert_redirected_to osts_anime_url(@osts_anime)
  end

  test "should destroy osts_anime" do
    assert_difference("OstsAnime.count", -1) do
      delete osts_anime_url(@osts_anime)
    end

    assert_redirected_to osts_animes_url
  end
end
