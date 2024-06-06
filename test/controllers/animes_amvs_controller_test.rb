require "test_helper"

class AnimesAmvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_amv = animes_amvs(:one)
  end

  test "should get index" do
    get animes_amvs_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_amv_url
    assert_response :success
  end

  test "should create animes_amv" do
    assert_difference("AnimesAmv.count") do
      post animes_amvs_url, params: { animes_amv: { name: @animes_amv.name } }
    end

    assert_redirected_to animes_amv_url(AnimesAmv.last)
  end

  test "should show animes_amv" do
    get animes_amv_url(@animes_amv)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_amv_url(@animes_amv)
    assert_response :success
  end

  test "should update animes_amv" do
    patch animes_amv_url(@animes_amv), params: { animes_amv: { name: @animes_amv.name } }
    assert_redirected_to animes_amv_url(@animes_amv)
  end

  test "should destroy animes_amv" do
    assert_difference("AnimesAmv.count", -1) do
      delete animes_amv_url(@animes_amv)
    end

    assert_redirected_to animes_amvs_url
  end
end
