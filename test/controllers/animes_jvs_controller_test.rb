require "test_helper"

class AnimesJvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_jv = animes_jvs(:one)
  end

  test "should get index" do
    get animes_jvs_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_jv_url
    assert_response :success
  end

  test "should create animes_jv" do
    assert_difference("AnimesJv.count") do
      post animes_jvs_url, params: { animes_jv: { name: @animes_jv.name } }
    end

    assert_redirected_to animes_jv_url(AnimesJv.last)
  end

  test "should show animes_jv" do
    get animes_jv_url(@animes_jv)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_jv_url(@animes_jv)
    assert_response :success
  end

  test "should update animes_jv" do
    patch animes_jv_url(@animes_jv), params: { animes_jv: { name: @animes_jv.name } }
    assert_redirected_to animes_jv_url(@animes_jv)
  end

  test "should destroy animes_jv" do
    assert_difference("AnimesJv.count", -1) do
      delete animes_jv_url(@animes_jv)
    end

    assert_redirected_to animes_jvs_url
  end
end
