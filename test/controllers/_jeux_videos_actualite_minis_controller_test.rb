require "test_helper"

class JeuxVideosActualiteMinisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_actualite_mini = _jeux_videos_actualite_minis(:one)
  end

  test "should get index" do
    get _jeux_videos_actualite_minis_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_actualite_mini_url
    assert_response :success
  end

  test "should create _jeux_videos_actualite_mini" do
    assert_difference("JeuxVideosActualiteMini.count") do
      post _jeux_videos_actualite_minis_url, params: { _jeux_videos_actualite_mini: { name: @_jeux_videos_actualite_mini.name } }
    end

    assert_redirected_to _jeux_videos_actualite_mini_url(JeuxVideosActualiteMini.last)
  end

  test "should show _jeux_videos_actualite_mini" do
    get _jeux_videos_actualite_mini_url(@_jeux_videos_actualite_mini)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_actualite_mini_url(@_jeux_videos_actualite_mini)
    assert_response :success
  end

  test "should update _jeux_videos_actualite_mini" do
    patch _jeux_videos_actualite_mini_url(@_jeux_videos_actualite_mini), params: { _jeux_videos_actualite_mini: { name: @_jeux_videos_actualite_mini.name } }
    assert_redirected_to _jeux_videos_actualite_mini_url(@_jeux_videos_actualite_mini)
  end

  test "should destroy _jeux_videos_actualite_mini" do
    assert_difference("JeuxVideosActualiteMini.count", -1) do
      delete _jeux_videos_actualite_mini_url(@_jeux_videos_actualite_mini)
    end

    assert_redirected_to _jeux_videos_actualite_minis_url
  end
end
