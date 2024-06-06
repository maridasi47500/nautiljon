require "test_helper"

class JeuxVideosEtatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_etat = _jeux_videos_etats(:one)
  end

  test "should get index" do
    get _jeux_videos_etats_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_etat_url
    assert_response :success
  end

  test "should create _jeux_videos_etat" do
    assert_difference("JeuxVideosEtat.count") do
      post _jeux_videos_etats_url, params: { _jeux_videos_etat: { name: @_jeux_videos_etat.name } }
    end

    assert_redirected_to _jeux_videos_etat_url(JeuxVideosEtat.last)
  end

  test "should show _jeux_videos_etat" do
    get _jeux_videos_etat_url(@_jeux_videos_etat)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_etat_url(@_jeux_videos_etat)
    assert_response :success
  end

  test "should update _jeux_videos_etat" do
    patch _jeux_videos_etat_url(@_jeux_videos_etat), params: { _jeux_videos_etat: { name: @_jeux_videos_etat.name } }
    assert_redirected_to _jeux_videos_etat_url(@_jeux_videos_etat)
  end

  test "should destroy _jeux_videos_etat" do
    assert_difference("JeuxVideosEtat.count", -1) do
      delete _jeux_videos_etat_url(@_jeux_videos_etat)
    end

    assert_redirected_to _jeux_videos_etats_url
  end
end
