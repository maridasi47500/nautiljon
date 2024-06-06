require "test_helper"

class AnimesJvPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_jv_plu = animes_jv_plus(:one)
  end

  test "should get index" do
    get animes_jv_plus_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_jv_plu_url
    assert_response :success
  end

  test "should create animes_jv_plu" do
    assert_difference("AnimesJvPlu.count") do
      post animes_jv_plus_url, params: { animes_jv_plu: { name: @animes_jv_plu.name } }
    end

    assert_redirected_to animes_jv_plu_url(AnimesJvPlu.last)
  end

  test "should show animes_jv_plu" do
    get animes_jv_plu_url(@animes_jv_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_jv_plu_url(@animes_jv_plu)
    assert_response :success
  end

  test "should update animes_jv_plu" do
    patch animes_jv_plu_url(@animes_jv_plu), params: { animes_jv_plu: { name: @animes_jv_plu.name } }
    assert_redirected_to animes_jv_plu_url(@animes_jv_plu)
  end

  test "should destroy animes_jv_plu" do
    assert_difference("AnimesJvPlu.count", -1) do
      delete animes_jv_plu_url(@animes_jv_plu)
    end

    assert_redirected_to animes_jv_plus_url
  end
end
