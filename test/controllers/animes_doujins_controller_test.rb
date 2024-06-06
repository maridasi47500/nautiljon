require "test_helper"

class AnimesDoujinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_doujin = animes_doujins(:one)
  end

  test "should get index" do
    get animes_doujins_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_doujin_url
    assert_response :success
  end

  test "should create animes_doujin" do
    assert_difference("AnimesDoujin.count") do
      post animes_doujins_url, params: { animes_doujin: { name: @animes_doujin.name } }
    end

    assert_redirected_to animes_doujin_url(AnimesDoujin.last)
  end

  test "should show animes_doujin" do
    get animes_doujin_url(@animes_doujin)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_doujin_url(@animes_doujin)
    assert_response :success
  end

  test "should update animes_doujin" do
    patch animes_doujin_url(@animes_doujin), params: { animes_doujin: { name: @animes_doujin.name } }
    assert_redirected_to animes_doujin_url(@animes_doujin)
  end

  test "should destroy animes_doujin" do
    assert_difference("AnimesDoujin.count", -1) do
      delete animes_doujin_url(@animes_doujin)
    end

    assert_redirected_to animes_doujins_url
  end
end
