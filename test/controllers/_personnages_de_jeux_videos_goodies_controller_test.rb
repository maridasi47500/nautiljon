require "test_helper"

class PersonnagesDeJeuxVideosGoodiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnages_de_jeux_videos_goody = _personnages_de_jeux_videos_goodies(:one)
  end

  test "should get index" do
    get _personnages_de_jeux_videos_goodies_url
    assert_response :success
  end

  test "should get new" do
    get new__personnages_de_jeux_videos_goody_url
    assert_response :success
  end

  test "should create _personnages_de_jeux_videos_goody" do
    assert_difference("PersonnagesDeJeuxVideosGoody.count") do
      post _personnages_de_jeux_videos_goodies_url, params: { _personnages_de_jeux_videos_goody: { name: @_personnages_de_jeux_videos_goody.name } }
    end

    assert_redirected_to _personnages_de_jeux_videos_goody_url(PersonnagesDeJeuxVideosGoody.last)
  end

  test "should show _personnages_de_jeux_videos_goody" do
    get _personnages_de_jeux_videos_goody_url(@_personnages_de_jeux_videos_goody)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnages_de_jeux_videos_goody_url(@_personnages_de_jeux_videos_goody)
    assert_response :success
  end

  test "should update _personnages_de_jeux_videos_goody" do
    patch _personnages_de_jeux_videos_goody_url(@_personnages_de_jeux_videos_goody), params: { _personnages_de_jeux_videos_goody: { name: @_personnages_de_jeux_videos_goody.name } }
    assert_redirected_to _personnages_de_jeux_videos_goody_url(@_personnages_de_jeux_videos_goody)
  end

  test "should destroy _personnages_de_jeux_videos_goody" do
    assert_difference("PersonnagesDeJeuxVideosGoody.count", -1) do
      delete _personnages_de_jeux_videos_goody_url(@_personnages_de_jeux_videos_goody)
    end

    assert_redirected_to _personnages_de_jeux_videos_goodies_url
  end
end
