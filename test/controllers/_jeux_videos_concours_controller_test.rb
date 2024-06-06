require "test_helper"

class JeuxVideosConcoursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_concour = _jeux_videos_concours(:one)
  end

  test "should get index" do
    get _jeux_videos_concours_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_concour_url
    assert_response :success
  end

  test "should create _jeux_videos_concour" do
    assert_difference("JeuxVideosConcour.count") do
      post _jeux_videos_concours_url, params: { _jeux_videos_concour: { name: @_jeux_videos_concour.name } }
    end

    assert_redirected_to _jeux_videos_concour_url(JeuxVideosConcour.last)
  end

  test "should show _jeux_videos_concour" do
    get _jeux_videos_concour_url(@_jeux_videos_concour)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_concour_url(@_jeux_videos_concour)
    assert_response :success
  end

  test "should update _jeux_videos_concour" do
    patch _jeux_videos_concour_url(@_jeux_videos_concour), params: { _jeux_videos_concour: { name: @_jeux_videos_concour.name } }
    assert_redirected_to _jeux_videos_concour_url(@_jeux_videos_concour)
  end

  test "should destroy _jeux_videos_concour" do
    assert_difference("JeuxVideosConcour.count", -1) do
      delete _jeux_videos_concour_url(@_jeux_videos_concour)
    end

    assert_redirected_to _jeux_videos_concours_url
  end
end
