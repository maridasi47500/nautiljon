require "test_helper"

class PersonnagesDeJeuxVideosJvPersosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnages_de_jeux_videos_jv_perso = _personnages_de_jeux_videos_jv_persos(:one)
  end

  test "should get index" do
    get _personnages_de_jeux_videos_jv_persos_url
    assert_response :success
  end

  test "should get new" do
    get new__personnages_de_jeux_videos_jv_perso_url
    assert_response :success
  end

  test "should create _personnages_de_jeux_videos_jv_perso" do
    assert_difference("PersonnagesDeJeuxVideosJvPerso.count") do
      post _personnages_de_jeux_videos_jv_persos_url, params: { _personnages_de_jeux_videos_jv_perso: { name: @_personnages_de_jeux_videos_jv_perso.name } }
    end

    assert_redirected_to _personnages_de_jeux_videos_jv_perso_url(PersonnagesDeJeuxVideosJvPerso.last)
  end

  test "should show _personnages_de_jeux_videos_jv_perso" do
    get _personnages_de_jeux_videos_jv_perso_url(@_personnages_de_jeux_videos_jv_perso)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnages_de_jeux_videos_jv_perso_url(@_personnages_de_jeux_videos_jv_perso)
    assert_response :success
  end

  test "should update _personnages_de_jeux_videos_jv_perso" do
    patch _personnages_de_jeux_videos_jv_perso_url(@_personnages_de_jeux_videos_jv_perso), params: { _personnages_de_jeux_videos_jv_perso: { name: @_personnages_de_jeux_videos_jv_perso.name } }
    assert_redirected_to _personnages_de_jeux_videos_jv_perso_url(@_personnages_de_jeux_videos_jv_perso)
  end

  test "should destroy _personnages_de_jeux_videos_jv_perso" do
    assert_difference("PersonnagesDeJeuxVideosJvPerso.count", -1) do
      delete _personnages_de_jeux_videos_jv_perso_url(@_personnages_de_jeux_videos_jv_perso)
    end

    assert_redirected_to _personnages_de_jeux_videos_jv_persos_url
  end
end
