require "test_helper"

class AnimesAmPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_am_plu = animes_am_plus(:one)
  end

  test "should get index" do
    get animes_am_plus_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_am_plu_url
    assert_response :success
  end

  test "should create animes_am_plu" do
    assert_difference("AnimesAmPlu.count") do
      post animes_am_plus_url, params: { animes_am_plu: { name: @animes_am_plu.name } }
    end

    assert_redirected_to animes_am_plu_url(AnimesAmPlu.last)
  end

  test "should show animes_am_plu" do
    get animes_am_plu_url(@animes_am_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_am_plu_url(@animes_am_plu)
    assert_response :success
  end

  test "should update animes_am_plu" do
    patch animes_am_plu_url(@animes_am_plu), params: { animes_am_plu: { name: @animes_am_plu.name } }
    assert_redirected_to animes_am_plu_url(@animes_am_plu)
  end

  test "should destroy animes_am_plu" do
    assert_difference("AnimesAmPlu.count", -1) do
      delete animes_am_plu_url(@animes_am_plu)
    end

    assert_redirected_to animes_am_plus_url
  end
end
