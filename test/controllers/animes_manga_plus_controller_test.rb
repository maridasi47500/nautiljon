require "test_helper"

class AnimesMangaPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_manga_plu = animes_manga_plus(:one)
  end

  test "should get index" do
    get animes_manga_plus_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_manga_plu_url
    assert_response :success
  end

  test "should create animes_manga_plu" do
    assert_difference("AnimesMangaPlu.count") do
      post animes_manga_plus_url, params: { animes_manga_plu: { name: @animes_manga_plu.name } }
    end

    assert_redirected_to animes_manga_plu_url(AnimesMangaPlu.last)
  end

  test "should show animes_manga_plu" do
    get animes_manga_plu_url(@animes_manga_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_manga_plu_url(@animes_manga_plu)
    assert_response :success
  end

  test "should update animes_manga_plu" do
    patch animes_manga_plu_url(@animes_manga_plu), params: { animes_manga_plu: { name: @animes_manga_plu.name } }
    assert_redirected_to animes_manga_plu_url(@animes_manga_plu)
  end

  test "should destroy animes_manga_plu" do
    assert_difference("AnimesMangaPlu.count", -1) do
      delete animes_manga_plu_url(@animes_manga_plu)
    end

    assert_redirected_to animes_manga_plus_url
  end
end
