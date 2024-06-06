require "test_helper"

class JeuxVideosCdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_cd = _jeux_videos_cds(:one)
  end

  test "should get index" do
    get _jeux_videos_cds_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_cd_url
    assert_response :success
  end

  test "should create _jeux_videos_cd" do
    assert_difference("JeuxVideosCd.count") do
      post _jeux_videos_cds_url, params: { _jeux_videos_cd: { name: @_jeux_videos_cd.name } }
    end

    assert_redirected_to _jeux_videos_cd_url(JeuxVideosCd.last)
  end

  test "should show _jeux_videos_cd" do
    get _jeux_videos_cd_url(@_jeux_videos_cd)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_cd_url(@_jeux_videos_cd)
    assert_response :success
  end

  test "should update _jeux_videos_cd" do
    patch _jeux_videos_cd_url(@_jeux_videos_cd), params: { _jeux_videos_cd: { name: @_jeux_videos_cd.name } }
    assert_redirected_to _jeux_videos_cd_url(@_jeux_videos_cd)
  end

  test "should destroy _jeux_videos_cd" do
    assert_difference("JeuxVideosCd.count", -1) do
      delete _jeux_videos_cd_url(@_jeux_videos_cd)
    end

    assert_redirected_to _jeux_videos_cds_url
  end
end
