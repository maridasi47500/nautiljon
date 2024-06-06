require "test_helper"

class GoodiesClipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_clip = _goodies_clips(:one)
  end

  test "should get index" do
    get _goodies_clips_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_clip_url
    assert_response :success
  end

  test "should create _goodies_clip" do
    assert_difference("GoodiesClip.count") do
      post _goodies_clips_url, params: { _goodies_clip: { name: @_goodies_clip.name } }
    end

    assert_redirected_to _goodies_clip_url(GoodiesClip.last)
  end

  test "should show _goodies_clip" do
    get _goodies_clip_url(@_goodies_clip)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_clip_url(@_goodies_clip)
    assert_response :success
  end

  test "should update _goodies_clip" do
    patch _goodies_clip_url(@_goodies_clip), params: { _goodies_clip: { name: @_goodies_clip.name } }
    assert_redirected_to _goodies_clip_url(@_goodies_clip)
  end

  test "should destroy _goodies_clip" do
    assert_difference("GoodiesClip.count", -1) do
      delete _goodies_clip_url(@_goodies_clip)
    end

    assert_redirected_to _goodies_clips_url
  end
end
