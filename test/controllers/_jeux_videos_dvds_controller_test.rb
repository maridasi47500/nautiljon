require "test_helper"

class JeuxVideosDvdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_dvd = _jeux_videos_dvds(:one)
  end

  test "should get index" do
    get _jeux_videos_dvds_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_dvd_url
    assert_response :success
  end

  test "should create _jeux_videos_dvd" do
    assert_difference("JeuxVideosDvd.count") do
      post _jeux_videos_dvds_url, params: { _jeux_videos_dvd: { name: @_jeux_videos_dvd.name } }
    end

    assert_redirected_to _jeux_videos_dvd_url(JeuxVideosDvd.last)
  end

  test "should show _jeux_videos_dvd" do
    get _jeux_videos_dvd_url(@_jeux_videos_dvd)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_dvd_url(@_jeux_videos_dvd)
    assert_response :success
  end

  test "should update _jeux_videos_dvd" do
    patch _jeux_videos_dvd_url(@_jeux_videos_dvd), params: { _jeux_videos_dvd: { name: @_jeux_videos_dvd.name } }
    assert_redirected_to _jeux_videos_dvd_url(@_jeux_videos_dvd)
  end

  test "should destroy _jeux_videos_dvd" do
    assert_difference("JeuxVideosDvd.count", -1) do
      delete _jeux_videos_dvd_url(@_jeux_videos_dvd)
    end

    assert_redirected_to _jeux_videos_dvds_url
  end
end
