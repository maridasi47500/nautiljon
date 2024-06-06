require "test_helper"

class PersonnagesDeJeuxVideosDoubleurRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnages_de_jeux_videos_doubleur_role = _personnages_de_jeux_videos_doubleur_roles(:one)
  end

  test "should get index" do
    get _personnages_de_jeux_videos_doubleur_roles_url
    assert_response :success
  end

  test "should get new" do
    get new__personnages_de_jeux_videos_doubleur_role_url
    assert_response :success
  end

  test "should create _personnages_de_jeux_videos_doubleur_role" do
    assert_difference("PersonnagesDeJeuxVideosDoubleurRole.count") do
      post _personnages_de_jeux_videos_doubleur_roles_url, params: { _personnages_de_jeux_videos_doubleur_role: { name: @_personnages_de_jeux_videos_doubleur_role.name } }
    end

    assert_redirected_to _personnages_de_jeux_videos_doubleur_role_url(PersonnagesDeJeuxVideosDoubleurRole.last)
  end

  test "should show _personnages_de_jeux_videos_doubleur_role" do
    get _personnages_de_jeux_videos_doubleur_role_url(@_personnages_de_jeux_videos_doubleur_role)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnages_de_jeux_videos_doubleur_role_url(@_personnages_de_jeux_videos_doubleur_role)
    assert_response :success
  end

  test "should update _personnages_de_jeux_videos_doubleur_role" do
    patch _personnages_de_jeux_videos_doubleur_role_url(@_personnages_de_jeux_videos_doubleur_role), params: { _personnages_de_jeux_videos_doubleur_role: { name: @_personnages_de_jeux_videos_doubleur_role.name } }
    assert_redirected_to _personnages_de_jeux_videos_doubleur_role_url(@_personnages_de_jeux_videos_doubleur_role)
  end

  test "should destroy _personnages_de_jeux_videos_doubleur_role" do
    assert_difference("PersonnagesDeJeuxVideosDoubleurRole.count", -1) do
      delete _personnages_de_jeux_videos_doubleur_role_url(@_personnages_de_jeux_videos_doubleur_role)
    end

    assert_redirected_to _personnages_de_jeux_videos_doubleur_roles_url
  end
end
