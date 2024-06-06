require "test_helper"

class JeuxVideosActualitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_actualite = _jeux_videos_actualites(:one)
  end

  test "should get index" do
    get _jeux_videos_actualites_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_actualite_url
    assert_response :success
  end

  test "should create _jeux_videos_actualite" do
    assert_difference("JeuxVideosActualite.count") do
      post _jeux_videos_actualites_url, params: { _jeux_videos_actualite: { name: @_jeux_videos_actualite.name } }
    end

    assert_redirected_to _jeux_videos_actualite_url(JeuxVideosActualite.last)
  end

  test "should show _jeux_videos_actualite" do
    get _jeux_videos_actualite_url(@_jeux_videos_actualite)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_actualite_url(@_jeux_videos_actualite)
    assert_response :success
  end

  test "should update _jeux_videos_actualite" do
    patch _jeux_videos_actualite_url(@_jeux_videos_actualite), params: { _jeux_videos_actualite: { name: @_jeux_videos_actualite.name } }
    assert_redirected_to _jeux_videos_actualite_url(@_jeux_videos_actualite)
  end

  test "should destroy _jeux_videos_actualite" do
    assert_difference("JeuxVideosActualite.count", -1) do
      delete _jeux_videos_actualite_url(@_jeux_videos_actualite)
    end

    assert_redirected_to _jeux_videos_actualites_url
  end
end
