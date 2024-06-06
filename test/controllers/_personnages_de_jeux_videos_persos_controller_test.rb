require "test_helper"

class PersonnagesDeJeuxVideosPersosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnages_de_jeux_videos_perso = _personnages_de_jeux_videos_persos(:one)
  end

  test "should get index" do
    get _personnages_de_jeux_videos_persos_url
    assert_response :success
  end

  test "should get new" do
    get new__personnages_de_jeux_videos_perso_url
    assert_response :success
  end

  test "should create _personnages_de_jeux_videos_perso" do
    assert_difference("PersonnagesDeJeuxVideosPerso.count") do
      post _personnages_de_jeux_videos_persos_url, params: { _personnages_de_jeux_videos_perso: { name: @_personnages_de_jeux_videos_perso.name } }
    end

    assert_redirected_to _personnages_de_jeux_videos_perso_url(PersonnagesDeJeuxVideosPerso.last)
  end

  test "should show _personnages_de_jeux_videos_perso" do
    get _personnages_de_jeux_videos_perso_url(@_personnages_de_jeux_videos_perso)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnages_de_jeux_videos_perso_url(@_personnages_de_jeux_videos_perso)
    assert_response :success
  end

  test "should update _personnages_de_jeux_videos_perso" do
    patch _personnages_de_jeux_videos_perso_url(@_personnages_de_jeux_videos_perso), params: { _personnages_de_jeux_videos_perso: { name: @_personnages_de_jeux_videos_perso.name } }
    assert_redirected_to _personnages_de_jeux_videos_perso_url(@_personnages_de_jeux_videos_perso)
  end

  test "should destroy _personnages_de_jeux_videos_perso" do
    assert_difference("PersonnagesDeJeuxVideosPerso.count", -1) do
      delete _personnages_de_jeux_videos_perso_url(@_personnages_de_jeux_videos_perso)
    end

    assert_redirected_to _personnages_de_jeux_videos_persos_url
  end
end
