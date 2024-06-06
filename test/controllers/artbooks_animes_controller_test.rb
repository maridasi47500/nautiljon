require "test_helper"

class ArtbooksAnimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artbooks_anime = artbooks_animes(:one)
  end

  test "should get index" do
    get artbooks_animes_url
    assert_response :success
  end

  test "should get new" do
    get new_artbooks_anime_url
    assert_response :success
  end

  test "should create artbooks_anime" do
    assert_difference("ArtbooksAnime.count") do
      post artbooks_animes_url, params: { artbooks_anime: { name: @artbooks_anime.name } }
    end

    assert_redirected_to artbooks_anime_url(ArtbooksAnime.last)
  end

  test "should show artbooks_anime" do
    get artbooks_anime_url(@artbooks_anime)
    assert_response :success
  end

  test "should get edit" do
    get edit_artbooks_anime_url(@artbooks_anime)
    assert_response :success
  end

  test "should update artbooks_anime" do
    patch artbooks_anime_url(@artbooks_anime), params: { artbooks_anime: { name: @artbooks_anime.name } }
    assert_redirected_to artbooks_anime_url(@artbooks_anime)
  end

  test "should destroy artbooks_anime" do
    assert_difference("ArtbooksAnime.count", -1) do
      delete artbooks_anime_url(@artbooks_anime)
    end

    assert_redirected_to artbooks_animes_url
  end
end
