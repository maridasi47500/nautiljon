require "test_helper"

class AnimesDramasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_drama = animes_dramas(:one)
  end

  test "should get index" do
    get animes_dramas_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_drama_url
    assert_response :success
  end

  test "should create animes_drama" do
    assert_difference("AnimesDrama.count") do
      post animes_dramas_url, params: { animes_drama: { name: @animes_drama.name } }
    end

    assert_redirected_to animes_drama_url(AnimesDrama.last)
  end

  test "should show animes_drama" do
    get animes_drama_url(@animes_drama)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_drama_url(@animes_drama)
    assert_response :success
  end

  test "should update animes_drama" do
    patch animes_drama_url(@animes_drama), params: { animes_drama: { name: @animes_drama.name } }
    assert_redirected_to animes_drama_url(@animes_drama)
  end

  test "should destroy animes_drama" do
    assert_difference("AnimesDrama.count", -1) do
      delete animes_drama_url(@animes_drama)
    end

    assert_redirected_to animes_dramas_url
  end
end
