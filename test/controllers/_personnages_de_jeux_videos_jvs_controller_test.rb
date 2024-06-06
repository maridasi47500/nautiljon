require "test_helper"

class PersonnagesDeJeuxVideosJvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnages_de_jeux_videos_jv = _personnages_de_jeux_videos_jvs(:one)
  end

  test "should get index" do
    get _personnages_de_jeux_videos_jvs_url
    assert_response :success
  end

  test "should get new" do
    get new__personnages_de_jeux_videos_jv_url
    assert_response :success
  end

  test "should create _personnages_de_jeux_videos_jv" do
    assert_difference("PersonnagesDeJeuxVideosJv.count") do
      post _personnages_de_jeux_videos_jvs_url, params: { _personnages_de_jeux_videos_jv: { name: @_personnages_de_jeux_videos_jv.name } }
    end

    assert_redirected_to _personnages_de_jeux_videos_jv_url(PersonnagesDeJeuxVideosJv.last)
  end

  test "should show _personnages_de_jeux_videos_jv" do
    get _personnages_de_jeux_videos_jv_url(@_personnages_de_jeux_videos_jv)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnages_de_jeux_videos_jv_url(@_personnages_de_jeux_videos_jv)
    assert_response :success
  end

  test "should update _personnages_de_jeux_videos_jv" do
    patch _personnages_de_jeux_videos_jv_url(@_personnages_de_jeux_videos_jv), params: { _personnages_de_jeux_videos_jv: { name: @_personnages_de_jeux_videos_jv.name } }
    assert_redirected_to _personnages_de_jeux_videos_jv_url(@_personnages_de_jeux_videos_jv)
  end

  test "should destroy _personnages_de_jeux_videos_jv" do
    assert_difference("PersonnagesDeJeuxVideosJv.count", -1) do
      delete _personnages_de_jeux_videos_jv_url(@_personnages_de_jeux_videos_jv)
    end

    assert_redirected_to _personnages_de_jeux_videos_jvs_url
  end
end
