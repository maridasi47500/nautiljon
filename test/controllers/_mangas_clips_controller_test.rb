require "test_helper"

class MangasClipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_clip = _mangas_clips(:one)
  end

  test "should get index" do
    get _mangas_clips_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_clip_url
    assert_response :success
  end

  test "should create _mangas_clip" do
    assert_difference("MangasClip.count") do
      post _mangas_clips_url, params: { _mangas_clip: { name: @_mangas_clip.name } }
    end

    assert_redirected_to _mangas_clip_url(MangasClip.last)
  end

  test "should show _mangas_clip" do
    get _mangas_clip_url(@_mangas_clip)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_clip_url(@_mangas_clip)
    assert_response :success
  end

  test "should update _mangas_clip" do
    patch _mangas_clip_url(@_mangas_clip), params: { _mangas_clip: { name: @_mangas_clip.name } }
    assert_redirected_to _mangas_clip_url(@_mangas_clip)
  end

  test "should destroy _mangas_clip" do
    assert_difference("MangasClip.count", -1) do
      delete _mangas_clip_url(@_mangas_clip)
    end

    assert_redirected_to _mangas_clips_url
  end
end
