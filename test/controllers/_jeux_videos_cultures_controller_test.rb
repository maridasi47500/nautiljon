require "test_helper"

class JeuxVideosCulturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_culture = _jeux_videos_cultures(:one)
  end

  test "should get index" do
    get _jeux_videos_cultures_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_culture_url
    assert_response :success
  end

  test "should create _jeux_videos_culture" do
    assert_difference("JeuxVideosCulture.count") do
      post _jeux_videos_cultures_url, params: { _jeux_videos_culture: { name: @_jeux_videos_culture.name } }
    end

    assert_redirected_to _jeux_videos_culture_url(JeuxVideosCulture.last)
  end

  test "should show _jeux_videos_culture" do
    get _jeux_videos_culture_url(@_jeux_videos_culture)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_culture_url(@_jeux_videos_culture)
    assert_response :success
  end

  test "should update _jeux_videos_culture" do
    patch _jeux_videos_culture_url(@_jeux_videos_culture), params: { _jeux_videos_culture: { name: @_jeux_videos_culture.name } }
    assert_redirected_to _jeux_videos_culture_url(@_jeux_videos_culture)
  end

  test "should destroy _jeux_videos_culture" do
    assert_difference("JeuxVideosCulture.count", -1) do
      delete _jeux_videos_culture_url(@_jeux_videos_culture)
    end

    assert_redirected_to _jeux_videos_cultures_url
  end
end
