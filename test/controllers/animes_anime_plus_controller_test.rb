require "test_helper"

class AnimesAnimePlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_anime_plu = animes_anime_plus(:one)
  end

  test "should get index" do
    get animes_anime_plus_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_anime_plu_url
    assert_response :success
  end

  test "should create animes_anime_plu" do
    assert_difference("AnimesAnimePlu.count") do
      post animes_anime_plus_url, params: { animes_anime_plu: { name: @animes_anime_plu.name } }
    end

    assert_redirected_to animes_anime_plu_url(AnimesAnimePlu.last)
  end

  test "should show animes_anime_plu" do
    get animes_anime_plu_url(@animes_anime_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_anime_plu_url(@animes_anime_plu)
    assert_response :success
  end

  test "should update animes_anime_plu" do
    patch animes_anime_plu_url(@animes_anime_plu), params: { animes_anime_plu: { name: @animes_anime_plu.name } }
    assert_redirected_to animes_anime_plu_url(@animes_anime_plu)
  end

  test "should destroy animes_anime_plu" do
    assert_difference("AnimesAnimePlu.count", -1) do
      delete animes_anime_plu_url(@animes_anime_plu)
    end

    assert_redirected_to animes_anime_plus_url
  end
end
