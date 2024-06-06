require "test_helper"

class AnimesFormatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_format = animes_formats(:one)
  end

  test "should get index" do
    get animes_formats_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_format_url
    assert_response :success
  end

  test "should create animes_format" do
    assert_difference("AnimesFormat.count") do
      post animes_formats_url, params: { animes_format: { name: @animes_format.name } }
    end

    assert_redirected_to animes_format_url(AnimesFormat.last)
  end

  test "should show animes_format" do
    get animes_format_url(@animes_format)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_format_url(@animes_format)
    assert_response :success
  end

  test "should update animes_format" do
    patch animes_format_url(@animes_format), params: { animes_format: { name: @animes_format.name } }
    assert_redirected_to animes_format_url(@animes_format)
  end

  test "should destroy animes_format" do
    assert_difference("AnimesFormat.count", -1) do
      delete animes_format_url(@animes_format)
    end

    assert_redirected_to animes_formats_url
  end
end
