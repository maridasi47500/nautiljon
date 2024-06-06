require "test_helper"

class BrevesClipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_clip = _breves_clips(:one)
  end

  test "should get index" do
    get _breves_clips_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_clip_url
    assert_response :success
  end

  test "should create _breves_clip" do
    assert_difference("BrevesClip.count") do
      post _breves_clips_url, params: { _breves_clip: { name: @_breves_clip.name } }
    end

    assert_redirected_to _breves_clip_url(BrevesClip.last)
  end

  test "should show _breves_clip" do
    get _breves_clip_url(@_breves_clip)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_clip_url(@_breves_clip)
    assert_response :success
  end

  test "should update _breves_clip" do
    patch _breves_clip_url(@_breves_clip), params: { _breves_clip: { name: @_breves_clip.name } }
    assert_redirected_to _breves_clip_url(@_breves_clip)
  end

  test "should destroy _breves_clip" do
    assert_difference("BrevesClip.count", -1) do
      delete _breves_clip_url(@_breves_clip)
    end

    assert_redirected_to _breves_clips_url
  end
end
