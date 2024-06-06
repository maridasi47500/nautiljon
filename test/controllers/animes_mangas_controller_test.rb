require "test_helper"

class AnimesMangasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_manga = animes_mangas(:one)
  end

  test "should get index" do
    get animes_mangas_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_manga_url
    assert_response :success
  end

  test "should create animes_manga" do
    assert_difference("AnimesManga.count") do
      post animes_mangas_url, params: { animes_manga: { name: @animes_manga.name } }
    end

    assert_redirected_to animes_manga_url(AnimesManga.last)
  end

  test "should show animes_manga" do
    get animes_manga_url(@animes_manga)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_manga_url(@animes_manga)
    assert_response :success
  end

  test "should update animes_manga" do
    patch animes_manga_url(@animes_manga), params: { animes_manga: { name: @animes_manga.name } }
    assert_redirected_to animes_manga_url(@animes_manga)
  end

  test "should destroy animes_manga" do
    assert_difference("AnimesManga.count", -1) do
      delete animes_manga_url(@animes_manga)
    end

    assert_redirected_to animes_mangas_url
  end
end
