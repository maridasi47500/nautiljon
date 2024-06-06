require "test_helper"

class AnimesPublicAvertisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_public_averti = animes_public_avertis(:one)
  end

  test "should get index" do
    get animes_public_avertis_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_public_averti_url
    assert_response :success
  end

  test "should create animes_public_averti" do
    assert_difference("AnimesPublicAverti.count") do
      post animes_public_avertis_url, params: { animes_public_averti: { name: @animes_public_averti.name } }
    end

    assert_redirected_to animes_public_averti_url(AnimesPublicAverti.last)
  end

  test "should show animes_public_averti" do
    get animes_public_averti_url(@animes_public_averti)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_public_averti_url(@animes_public_averti)
    assert_response :success
  end

  test "should update animes_public_averti" do
    patch animes_public_averti_url(@animes_public_averti), params: { animes_public_averti: { name: @animes_public_averti.name } }
    assert_redirected_to animes_public_averti_url(@animes_public_averti)
  end

  test "should destroy animes_public_averti" do
    assert_difference("AnimesPublicAverti.count", -1) do
      delete animes_public_averti_url(@animes_public_averti)
    end

    assert_redirected_to animes_public_avertis_url
  end
end
