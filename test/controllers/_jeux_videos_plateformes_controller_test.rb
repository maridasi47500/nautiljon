require "test_helper"

class JeuxVideosPlateformesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_plateforme = _jeux_videos_plateformes(:one)
  end

  test "should get index" do
    get _jeux_videos_plateformes_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_plateforme_url
    assert_response :success
  end

  test "should create _jeux_videos_plateforme" do
    assert_difference("JeuxVideosPlateforme.count") do
      post _jeux_videos_plateformes_url, params: { _jeux_videos_plateforme: { name: @_jeux_videos_plateforme.name } }
    end

    assert_redirected_to _jeux_videos_plateforme_url(JeuxVideosPlateforme.last)
  end

  test "should show _jeux_videos_plateforme" do
    get _jeux_videos_plateforme_url(@_jeux_videos_plateforme)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_plateforme_url(@_jeux_videos_plateforme)
    assert_response :success
  end

  test "should update _jeux_videos_plateforme" do
    patch _jeux_videos_plateforme_url(@_jeux_videos_plateforme), params: { _jeux_videos_plateforme: { name: @_jeux_videos_plateforme.name } }
    assert_redirected_to _jeux_videos_plateforme_url(@_jeux_videos_plateforme)
  end

  test "should destroy _jeux_videos_plateforme" do
    assert_difference("JeuxVideosPlateforme.count", -1) do
      delete _jeux_videos_plateforme_url(@_jeux_videos_plateforme)
    end

    assert_redirected_to _jeux_videos_plateformes_url
  end
end
