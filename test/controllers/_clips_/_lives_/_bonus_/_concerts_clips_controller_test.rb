require "test_helper"

class Clips::Lives::Bonus::ConcertsClipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_clips___lives___bonus___concerts_clip = _clips___lives___bonus___concerts_clips(:one)
  end

  test "should get index" do
    get _clips___lives___bonus___concerts_clips_url
    assert_response :success
  end

  test "should get new" do
    get new__clips___lives___bonus___concerts_clip_url
    assert_response :success
  end

  test "should create _clips___lives___bonus___concerts_clip" do
    assert_difference("Clips::Lives::Bonus::ConcertsClip.count") do
      post _clips___lives___bonus___concerts_clips_url, params: { _clips___lives___bonus___concerts_clip: { name: @_clips___lives___bonus___concerts_clip.name } }
    end

    assert_redirected_to _clips___lives___bonus___concerts_clip_url(Clips::Lives::Bonus::ConcertsClip.last)
  end

  test "should show _clips___lives___bonus___concerts_clip" do
    get _clips___lives___bonus___concerts_clip_url(@_clips___lives___bonus___concerts_clip)
    assert_response :success
  end

  test "should get edit" do
    get edit__clips___lives___bonus___concerts_clip_url(@_clips___lives___bonus___concerts_clip)
    assert_response :success
  end

  test "should update _clips___lives___bonus___concerts_clip" do
    patch _clips___lives___bonus___concerts_clip_url(@_clips___lives___bonus___concerts_clip), params: { _clips___lives___bonus___concerts_clip: { name: @_clips___lives___bonus___concerts_clip.name } }
    assert_redirected_to _clips___lives___bonus___concerts_clip_url(@_clips___lives___bonus___concerts_clip)
  end

  test "should destroy _clips___lives___bonus___concerts_clip" do
    assert_difference("Clips::Lives::Bonus::ConcertsClip.count", -1) do
      delete _clips___lives___bonus___concerts_clip_url(@_clips___lives___bonus___concerts_clip)
    end

    assert_redirected_to _clips___lives___bonus___concerts_clips_url
  end
end
