require "test_helper"

class AnimesLnPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_ln_plu = animes_ln_plus(:one)
  end

  test "should get index" do
    get animes_ln_plus_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_ln_plu_url
    assert_response :success
  end

  test "should create animes_ln_plu" do
    assert_difference("AnimesLnPlu.count") do
      post animes_ln_plus_url, params: { animes_ln_plu: { name: @animes_ln_plu.name } }
    end

    assert_redirected_to animes_ln_plu_url(AnimesLnPlu.last)
  end

  test "should show animes_ln_plu" do
    get animes_ln_plu_url(@animes_ln_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_ln_plu_url(@animes_ln_plu)
    assert_response :success
  end

  test "should update animes_ln_plu" do
    patch animes_ln_plu_url(@animes_ln_plu), params: { animes_ln_plu: { name: @animes_ln_plu.name } }
    assert_redirected_to animes_ln_plu_url(@animes_ln_plu)
  end

  test "should destroy animes_ln_plu" do
    assert_difference("AnimesLnPlu.count", -1) do
      delete animes_ln_plu_url(@animes_ln_plu)
    end

    assert_redirected_to animes_ln_plus_url
  end
end
