require "test_helper"

class AnimesOstsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_ost = animes_osts(:one)
  end

  test "should get index" do
    get animes_osts_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_ost_url
    assert_response :success
  end

  test "should create animes_ost" do
    assert_difference("AnimesOst.count") do
      post animes_osts_url, params: { animes_ost: { name: @animes_ost.name } }
    end

    assert_redirected_to animes_ost_url(AnimesOst.last)
  end

  test "should show animes_ost" do
    get animes_ost_url(@animes_ost)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_ost_url(@animes_ost)
    assert_response :success
  end

  test "should update animes_ost" do
    patch animes_ost_url(@animes_ost), params: { animes_ost: { name: @animes_ost.name } }
    assert_redirected_to animes_ost_url(@animes_ost)
  end

  test "should destroy animes_ost" do
    assert_difference("AnimesOst.count", -1) do
      delete animes_ost_url(@animes_ost)
    end

    assert_redirected_to animes_osts_url
  end
end
