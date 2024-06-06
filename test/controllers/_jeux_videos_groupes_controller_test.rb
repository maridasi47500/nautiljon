require "test_helper"

class JeuxVideosGroupesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_groupe = _jeux_videos_groupes(:one)
  end

  test "should get index" do
    get _jeux_videos_groupes_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_groupe_url
    assert_response :success
  end

  test "should create _jeux_videos_groupe" do
    assert_difference("JeuxVideosGroupe.count") do
      post _jeux_videos_groupes_url, params: { _jeux_videos_groupe: { name: @_jeux_videos_groupe.name } }
    end

    assert_redirected_to _jeux_videos_groupe_url(JeuxVideosGroupe.last)
  end

  test "should show _jeux_videos_groupe" do
    get _jeux_videos_groupe_url(@_jeux_videos_groupe)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_groupe_url(@_jeux_videos_groupe)
    assert_response :success
  end

  test "should update _jeux_videos_groupe" do
    patch _jeux_videos_groupe_url(@_jeux_videos_groupe), params: { _jeux_videos_groupe: { name: @_jeux_videos_groupe.name } }
    assert_redirected_to _jeux_videos_groupe_url(@_jeux_videos_groupe)
  end

  test "should destroy _jeux_videos_groupe" do
    assert_difference("JeuxVideosGroupe.count", -1) do
      delete _jeux_videos_groupe_url(@_jeux_videos_groupe)
    end

    assert_redirected_to _jeux_videos_groupes_url
  end
end
