require "test_helper"

class AnimesPhotobooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_photobook = animes_photobooks(:one)
  end

  test "should get index" do
    get animes_photobooks_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_photobook_url
    assert_response :success
  end

  test "should create animes_photobook" do
    assert_difference("AnimesPhotobook.count") do
      post animes_photobooks_url, params: { animes_photobook: { name: @animes_photobook.name } }
    end

    assert_redirected_to animes_photobook_url(AnimesPhotobook.last)
  end

  test "should show animes_photobook" do
    get animes_photobook_url(@animes_photobook)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_photobook_url(@animes_photobook)
    assert_response :success
  end

  test "should update animes_photobook" do
    patch animes_photobook_url(@animes_photobook), params: { animes_photobook: { name: @animes_photobook.name } }
    assert_redirected_to animes_photobook_url(@animes_photobook)
  end

  test "should destroy animes_photobook" do
    assert_difference("AnimesPhotobook.count", -1) do
      delete animes_photobook_url(@animes_photobook)
    end

    assert_redirected_to animes_photobooks_url
  end
end
