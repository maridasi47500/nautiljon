require "test_helper"

class VideosIdCatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_videos_id_cat = _videos_id_cats(:one)
  end

  test "should get index" do
    get _videos_id_cats_url
    assert_response :success
  end

  test "should get new" do
    get new__videos_id_cat_url
    assert_response :success
  end

  test "should create _videos_id_cat" do
    assert_difference("VideosIdCat.count") do
      post _videos_id_cats_url, params: { _videos_id_cat: { name: @_videos_id_cat.name } }
    end

    assert_redirected_to _videos_id_cat_url(VideosIdCat.last)
  end

  test "should show _videos_id_cat" do
    get _videos_id_cat_url(@_videos_id_cat)
    assert_response :success
  end

  test "should get edit" do
    get edit__videos_id_cat_url(@_videos_id_cat)
    assert_response :success
  end

  test "should update _videos_id_cat" do
    patch _videos_id_cat_url(@_videos_id_cat), params: { _videos_id_cat: { name: @_videos_id_cat.name } }
    assert_redirected_to _videos_id_cat_url(@_videos_id_cat)
  end

  test "should destroy _videos_id_cat" do
    assert_difference("VideosIdCat.count", -1) do
      delete _videos_id_cat_url(@_videos_id_cat)
    end

    assert_redirected_to _videos_id_cats_url
  end
end
