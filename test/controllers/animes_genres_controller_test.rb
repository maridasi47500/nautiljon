require "test_helper"

class AnimesGenresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_genre = animes_genres(:one)
  end

  test "should get index" do
    get animes_genres_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_genre_url
    assert_response :success
  end

  test "should create animes_genre" do
    assert_difference("AnimesGenre.count") do
      post animes_genres_url, params: { animes_genre: { name: @animes_genre.name } }
    end

    assert_redirected_to animes_genre_url(AnimesGenre.last)
  end

  test "should show animes_genre" do
    get animes_genre_url(@animes_genre)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_genre_url(@animes_genre)
    assert_response :success
  end

  test "should update animes_genre" do
    patch animes_genre_url(@animes_genre), params: { animes_genre: { name: @animes_genre.name } }
    assert_redirected_to animes_genre_url(@animes_genre)
  end

  test "should destroy animes_genre" do
    assert_difference("AnimesGenre.count", -1) do
      delete animes_genre_url(@animes_genre)
    end

    assert_redirected_to animes_genres_url
  end
end
