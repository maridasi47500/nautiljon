require "test_helper"

class AnimesOriginesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_origine = animes_origines(:one)
  end

  test "should get index" do
    get animes_origines_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_origine_url
    assert_response :success
  end

  test "should create animes_origine" do
    assert_difference("AnimesOrigine.count") do
      post animes_origines_url, params: { animes_origine: { name: @animes_origine.name } }
    end

    assert_redirected_to animes_origine_url(AnimesOrigine.last)
  end

  test "should show animes_origine" do
    get animes_origine_url(@animes_origine)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_origine_url(@animes_origine)
    assert_response :success
  end

  test "should update animes_origine" do
    patch animes_origine_url(@animes_origine), params: { animes_origine: { name: @animes_origine.name } }
    assert_redirected_to animes_origine_url(@animes_origine)
  end

  test "should destroy animes_origine" do
    assert_difference("AnimesOrigine.count", -1) do
      delete animes_origine_url(@animes_origine)
    end

    assert_redirected_to animes_origines_url
  end
end
