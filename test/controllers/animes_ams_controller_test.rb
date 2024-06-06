require "test_helper"

class AnimesAmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_am = animes_ams(:one)
  end

  test "should get index" do
    get animes_ams_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_am_url
    assert_response :success
  end

  test "should create animes_am" do
    assert_difference("AnimesAm.count") do
      post animes_ams_url, params: { animes_am: { name: @animes_am.name } }
    end

    assert_redirected_to animes_am_url(AnimesAm.last)
  end

  test "should show animes_am" do
    get animes_am_url(@animes_am)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_am_url(@animes_am)
    assert_response :success
  end

  test "should update animes_am" do
    patch animes_am_url(@animes_am), params: { animes_am: { name: @animes_am.name } }
    assert_redirected_to animes_am_url(@animes_am)
  end

  test "should destroy animes_am" do
    assert_difference("AnimesAm.count", -1) do
      delete animes_am_url(@animes_am)
    end

    assert_redirected_to animes_ams_url
  end
end
