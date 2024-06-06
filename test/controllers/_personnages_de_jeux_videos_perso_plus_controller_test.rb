require "test_helper"

class PersonnagesDeJeuxVideosPersoPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnages_de_jeux_videos_perso_plu = _personnages_de_jeux_videos_perso_plus(:one)
  end

  test "should get index" do
    get _personnages_de_jeux_videos_perso_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__personnages_de_jeux_videos_perso_plu_url
    assert_response :success
  end

  test "should create _personnages_de_jeux_videos_perso_plu" do
    assert_difference("PersonnagesDeJeuxVideosPersoPlu.count") do
      post _personnages_de_jeux_videos_perso_plus_url, params: { _personnages_de_jeux_videos_perso_plu: { name: @_personnages_de_jeux_videos_perso_plu.name } }
    end

    assert_redirected_to _personnages_de_jeux_videos_perso_plu_url(PersonnagesDeJeuxVideosPersoPlu.last)
  end

  test "should show _personnages_de_jeux_videos_perso_plu" do
    get _personnages_de_jeux_videos_perso_plu_url(@_personnages_de_jeux_videos_perso_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnages_de_jeux_videos_perso_plu_url(@_personnages_de_jeux_videos_perso_plu)
    assert_response :success
  end

  test "should update _personnages_de_jeux_videos_perso_plu" do
    patch _personnages_de_jeux_videos_perso_plu_url(@_personnages_de_jeux_videos_perso_plu), params: { _personnages_de_jeux_videos_perso_plu: { name: @_personnages_de_jeux_videos_perso_plu.name } }
    assert_redirected_to _personnages_de_jeux_videos_perso_plu_url(@_personnages_de_jeux_videos_perso_plu)
  end

  test "should destroy _personnages_de_jeux_videos_perso_plu" do
    assert_difference("PersonnagesDeJeuxVideosPersoPlu.count", -1) do
      delete _personnages_de_jeux_videos_perso_plu_url(@_personnages_de_jeux_videos_perso_plu)
    end

    assert_redirected_to _personnages_de_jeux_videos_perso_plus_url
  end
end
