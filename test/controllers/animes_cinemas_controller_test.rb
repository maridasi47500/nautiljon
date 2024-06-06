require "test_helper"

class AnimesCinemasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_cinema = animes_cinemas(:one)
  end

  test "should get index" do
    get animes_cinemas_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_cinema_url
    assert_response :success
  end

  test "should create animes_cinema" do
    assert_difference("AnimesCinema.count") do
      post animes_cinemas_url, params: { animes_cinema: { name: @animes_cinema.name } }
    end

    assert_redirected_to animes_cinema_url(AnimesCinema.last)
  end

  test "should show animes_cinema" do
    get animes_cinema_url(@animes_cinema)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_cinema_url(@animes_cinema)
    assert_response :success
  end

  test "should update animes_cinema" do
    patch animes_cinema_url(@animes_cinema), params: { animes_cinema: { name: @animes_cinema.name } }
    assert_redirected_to animes_cinema_url(@animes_cinema)
  end

  test "should destroy animes_cinema" do
    assert_difference("AnimesCinema.count", -1) do
      delete animes_cinema_url(@animes_cinema)
    end

    assert_redirected_to animes_cinemas_url
  end
end
