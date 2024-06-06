require "test_helper"

class AnimesEncoursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_encour = animes_encours(:one)
  end

  test "should get index" do
    get animes_encours_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_encour_url
    assert_response :success
  end

  test "should create animes_encour" do
    assert_difference("AnimesEncour.count") do
      post animes_encours_url, params: { animes_encour: { name: @animes_encour.name } }
    end

    assert_redirected_to animes_encour_url(AnimesEncour.last)
  end

  test "should show animes_encour" do
    get animes_encour_url(@animes_encour)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_encour_url(@animes_encour)
    assert_response :success
  end

  test "should update animes_encour" do
    patch animes_encour_url(@animes_encour), params: { animes_encour: { name: @animes_encour.name } }
    assert_redirected_to animes_encour_url(@animes_encour)
  end

  test "should destroy animes_encour" do
    assert_difference("AnimesEncour.count", -1) do
      delete animes_encour_url(@animes_encour)
    end

    assert_redirected_to animes_encours_url
  end
end
