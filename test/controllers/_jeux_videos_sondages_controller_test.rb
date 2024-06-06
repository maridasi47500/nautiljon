require "test_helper"

class JeuxVideosSondagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_sondage = _jeux_videos_sondages(:one)
  end

  test "should get index" do
    get _jeux_videos_sondages_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_sondage_url
    assert_response :success
  end

  test "should create _jeux_videos_sondage" do
    assert_difference("JeuxVideosSondage.count") do
      post _jeux_videos_sondages_url, params: { _jeux_videos_sondage: { name: @_jeux_videos_sondage.name } }
    end

    assert_redirected_to _jeux_videos_sondage_url(JeuxVideosSondage.last)
  end

  test "should show _jeux_videos_sondage" do
    get _jeux_videos_sondage_url(@_jeux_videos_sondage)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_sondage_url(@_jeux_videos_sondage)
    assert_response :success
  end

  test "should update _jeux_videos_sondage" do
    patch _jeux_videos_sondage_url(@_jeux_videos_sondage), params: { _jeux_videos_sondage: { name: @_jeux_videos_sondage.name } }
    assert_redirected_to _jeux_videos_sondage_url(@_jeux_videos_sondage)
  end

  test "should destroy _jeux_videos_sondage" do
    assert_difference("JeuxVideosSondage.count", -1) do
      delete _jeux_videos_sondage_url(@_jeux_videos_sondage)
    end

    assert_redirected_to _jeux_videos_sondages_url
  end
end
