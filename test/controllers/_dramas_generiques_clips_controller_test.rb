require "test_helper"

class DramasGeneriquesClipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_generiques_clip = _dramas_generiques_clips(:one)
  end

  test "should get index" do
    get _dramas_generiques_clips_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_generiques_clip_url
    assert_response :success
  end

  test "should create _dramas_generiques_clip" do
    assert_difference("DramasGeneriquesClip.count") do
      post _dramas_generiques_clips_url, params: { _dramas_generiques_clip: { name: @_dramas_generiques_clip.name } }
    end

    assert_redirected_to _dramas_generiques_clip_url(DramasGeneriquesClip.last)
  end

  test "should show _dramas_generiques_clip" do
    get _dramas_generiques_clip_url(@_dramas_generiques_clip)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_generiques_clip_url(@_dramas_generiques_clip)
    assert_response :success
  end

  test "should update _dramas_generiques_clip" do
    patch _dramas_generiques_clip_url(@_dramas_generiques_clip), params: { _dramas_generiques_clip: { name: @_dramas_generiques_clip.name } }
    assert_redirected_to _dramas_generiques_clip_url(@_dramas_generiques_clip)
  end

  test "should destroy _dramas_generiques_clip" do
    assert_difference("DramasGeneriquesClip.count", -1) do
      delete _dramas_generiques_clip_url(@_dramas_generiques_clip)
    end

    assert_redirected_to _dramas_generiques_clips_url
  end
end
