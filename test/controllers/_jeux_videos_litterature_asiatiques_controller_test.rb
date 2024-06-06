require "test_helper"

class JeuxVideosLitteratureAsiatiquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_litterature_asiatique = _jeux_videos_litterature_asiatiques(:one)
  end

  test "should get index" do
    get _jeux_videos_litterature_asiatiques_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_litterature_asiatique_url
    assert_response :success
  end

  test "should create _jeux_videos_litterature_asiatique" do
    assert_difference("JeuxVideosLitteratureAsiatique.count") do
      post _jeux_videos_litterature_asiatiques_url, params: { _jeux_videos_litterature_asiatique: { name: @_jeux_videos_litterature_asiatique.name } }
    end

    assert_redirected_to _jeux_videos_litterature_asiatique_url(JeuxVideosLitteratureAsiatique.last)
  end

  test "should show _jeux_videos_litterature_asiatique" do
    get _jeux_videos_litterature_asiatique_url(@_jeux_videos_litterature_asiatique)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_litterature_asiatique_url(@_jeux_videos_litterature_asiatique)
    assert_response :success
  end

  test "should update _jeux_videos_litterature_asiatique" do
    patch _jeux_videos_litterature_asiatique_url(@_jeux_videos_litterature_asiatique), params: { _jeux_videos_litterature_asiatique: { name: @_jeux_videos_litterature_asiatique.name } }
    assert_redirected_to _jeux_videos_litterature_asiatique_url(@_jeux_videos_litterature_asiatique)
  end

  test "should destroy _jeux_videos_litterature_asiatique" do
    assert_difference("JeuxVideosLitteratureAsiatique.count", -1) do
      delete _jeux_videos_litterature_asiatique_url(@_jeux_videos_litterature_asiatique)
    end

    assert_redirected_to _jeux_videos_litterature_asiatiques_url
  end
end
