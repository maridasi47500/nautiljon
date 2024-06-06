require "test_helper"

class AnimesDramaPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_drama_plu = animes_drama_plus(:one)
  end

  test "should get index" do
    get animes_drama_plus_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_drama_plu_url
    assert_response :success
  end

  test "should create animes_drama_plu" do
    assert_difference("AnimesDramaPlu.count") do
      post animes_drama_plus_url, params: { animes_drama_plu: { name: @animes_drama_plu.name } }
    end

    assert_redirected_to animes_drama_plu_url(AnimesDramaPlu.last)
  end

  test "should show animes_drama_plu" do
    get animes_drama_plu_url(@animes_drama_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_drama_plu_url(@animes_drama_plu)
    assert_response :success
  end

  test "should update animes_drama_plu" do
    patch animes_drama_plu_url(@animes_drama_plu), params: { animes_drama_plu: { name: @animes_drama_plu.name } }
    assert_redirected_to animes_drama_plu_url(@animes_drama_plu)
  end

  test "should destroy animes_drama_plu" do
    assert_difference("AnimesDramaPlu.count", -1) do
      delete animes_drama_plu_url(@animes_drama_plu)
    end

    assert_redirected_to animes_drama_plus_url
  end
end
