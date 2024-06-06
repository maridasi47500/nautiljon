require "test_helper"

class VideosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_video = _videos(:one)
  end

  test "should get index" do
    get _videos_url
    assert_response :success
  end

  test "should get new" do
    get new__video_url
    assert_response :success
  end

  test "should create _video" do
    assert_difference("Video.count") do
      post _videos_url, params: { _video: { _videos_id_cat_id: @_video._videos_id_cat_id, tags: @_video.tags, titre: @_video.titre, url: @_video.url } }
    end

    assert_redirected_to _video_url(Video.last)
  end

  test "should show _video" do
    get _video_url(@_video)
    assert_response :success
  end

  test "should get edit" do
    get edit__video_url(@_video)
    assert_response :success
  end

  test "should update _video" do
    patch _video_url(@_video), params: { _video: { _videos_id_cat_id: @_video._videos_id_cat_id, tags: @_video.tags, titre: @_video.titre, url: @_video.url } }
    assert_redirected_to _video_url(@_video)
  end

  test "should destroy _video" do
    assert_difference("Video.count", -1) do
      delete _video_url(@_video)
    end

    assert_redirected_to _videos_url
  end
end
