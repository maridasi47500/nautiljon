require "test_helper"

class NumeroDemissionTvsClipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_numero_demission_tvs_clip = _numero_demission_tvs_clips(:one)
  end

  test "should get index" do
    get _numero_demission_tvs_clips_url
    assert_response :success
  end

  test "should get new" do
    get new__numero_demission_tvs_clip_url
    assert_response :success
  end

  test "should create _numero_demission_tvs_clip" do
    assert_difference("NumeroDemissionTvsClip.count") do
      post _numero_demission_tvs_clips_url, params: { _numero_demission_tvs_clip: { name: @_numero_demission_tvs_clip.name } }
    end

    assert_redirected_to _numero_demission_tvs_clip_url(NumeroDemissionTvsClip.last)
  end

  test "should show _numero_demission_tvs_clip" do
    get _numero_demission_tvs_clip_url(@_numero_demission_tvs_clip)
    assert_response :success
  end

  test "should get edit" do
    get edit__numero_demission_tvs_clip_url(@_numero_demission_tvs_clip)
    assert_response :success
  end

  test "should update _numero_demission_tvs_clip" do
    patch _numero_demission_tvs_clip_url(@_numero_demission_tvs_clip), params: { _numero_demission_tvs_clip: { name: @_numero_demission_tvs_clip.name } }
    assert_redirected_to _numero_demission_tvs_clip_url(@_numero_demission_tvs_clip)
  end

  test "should destroy _numero_demission_tvs_clip" do
    assert_difference("NumeroDemissionTvsClip.count", -1) do
      delete _numero_demission_tvs_clip_url(@_numero_demission_tvs_clip)
    end

    assert_redirected_to _numero_demission_tvs_clips_url
  end
end
