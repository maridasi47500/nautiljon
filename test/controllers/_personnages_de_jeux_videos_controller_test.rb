require "test_helper"

class PersonnagesDeJeuxVideosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnages_de_jeux_video = _personnages_de_jeux_videos(:one)
  end

  test "should get index" do
    get _personnages_de_jeux_videos_url
    assert_response :success
  end

  test "should get new" do
    get new__personnages_de_jeux_video_url
    assert_response :success
  end

  test "should create _personnages_de_jeux_video" do
    assert_difference("PersonnagesDeJeuxVideo.count") do
      post _personnages_de_jeux_videos_url, params: { _personnages_de_jeux_video: { : @_personnages_de_jeux_video., _personnages_de_jeux_videos_doubleur_pays_id: @_personnages_de_jeux_video._personnages_de_jeux_videos_doubleur_pays_id, _personnages_de_jeux_videos_doubleur_people_id: @_personnages_de_jeux_video._personnages_de_jeux_videos_doubleur_people_id, _personnages_de_jeux_videos_doubleur_role_id: @_personnages_de_jeux_video._personnages_de_jeux_videos_doubleur_role_id, _personnages_de_jeux_videos_goodies_id: @_personnages_de_jeux_video._personnages_de_jeux_videos_goodies_id, _personnages_de_jeux_videos_jv_id: @_personnages_de_jeux_video._personnages_de_jeux_videos_jv_id, _personnages_de_jeux_videos_jv_perso_id: @_personnages_de_jeux_video._personnages_de_jeux_videos_jv_perso_id, _personnages_de_jeux_videos_perso_id: @_personnages_de_jeux_video._personnages_de_jeux_videos_perso_id, _personnages_de_jeux_videos_perso_manga_id: @_personnages_de_jeux_video._personnages_de_jeux_videos_perso_manga_id, _personnages_de_jeux_videos_perso_plus_id: @_personnages_de_jeux_video._personnages_de_jeux_videos_perso_plus_id, acceptregles: @_personnages_de_jeux_video.acceptregles, comment: @_personnages_de_jeux_video.comment, description: @_personnages_de_jeux_video.description, image: @_personnages_de_jeux_video.image, jouable: @_personnages_de_jeux_video.jouable, muet: @_personnages_de_jeux_video.muet, nom: @_personnages_de_jeux_video.nom, nom_alternatif: @_personnages_de_jeux_video.nom_alternatif, nom_original: @_personnages_de_jeux_video.nom_original, nom_suite: @_personnages_de_jeux_video.nom_suite, statut_prop: @_personnages_de_jeux_video.statut_prop } }
    end

    assert_redirected_to _personnages_de_jeux_video_url(PersonnagesDeJeuxVideo.last)
  end

  test "should show _personnages_de_jeux_video" do
    get _personnages_de_jeux_video_url(@_personnages_de_jeux_video)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnages_de_jeux_video_url(@_personnages_de_jeux_video)
    assert_response :success
  end

  test "should update _personnages_de_jeux_video" do
    patch _personnages_de_jeux_video_url(@_personnages_de_jeux_video), params: { _personnages_de_jeux_video: { : @_personnages_de_jeux_video., _personnages_de_jeux_videos_doubleur_pays_id: @_personnages_de_jeux_video._personnages_de_jeux_videos_doubleur_pays_id, _personnages_de_jeux_videos_doubleur_people_id: @_personnages_de_jeux_video._personnages_de_jeux_videos_doubleur_people_id, _personnages_de_jeux_videos_doubleur_role_id: @_personnages_de_jeux_video._personnages_de_jeux_videos_doubleur_role_id, _personnages_de_jeux_videos_goodies_id: @_personnages_de_jeux_video._personnages_de_jeux_videos_goodies_id, _personnages_de_jeux_videos_jv_id: @_personnages_de_jeux_video._personnages_de_jeux_videos_jv_id, _personnages_de_jeux_videos_jv_perso_id: @_personnages_de_jeux_video._personnages_de_jeux_videos_jv_perso_id, _personnages_de_jeux_videos_perso_id: @_personnages_de_jeux_video._personnages_de_jeux_videos_perso_id, _personnages_de_jeux_videos_perso_manga_id: @_personnages_de_jeux_video._personnages_de_jeux_videos_perso_manga_id, _personnages_de_jeux_videos_perso_plus_id: @_personnages_de_jeux_video._personnages_de_jeux_videos_perso_plus_id, acceptregles: @_personnages_de_jeux_video.acceptregles, comment: @_personnages_de_jeux_video.comment, description: @_personnages_de_jeux_video.description, image: @_personnages_de_jeux_video.image, jouable: @_personnages_de_jeux_video.jouable, muet: @_personnages_de_jeux_video.muet, nom: @_personnages_de_jeux_video.nom, nom_alternatif: @_personnages_de_jeux_video.nom_alternatif, nom_original: @_personnages_de_jeux_video.nom_original, nom_suite: @_personnages_de_jeux_video.nom_suite, statut_prop: @_personnages_de_jeux_video.statut_prop } }
    assert_redirected_to _personnages_de_jeux_video_url(@_personnages_de_jeux_video)
  end

  test "should destroy _personnages_de_jeux_video" do
    assert_difference("PersonnagesDeJeuxVideo.count", -1) do
      delete _personnages_de_jeux_video_url(@_personnages_de_jeux_video)
    end

    assert_redirected_to _personnages_de_jeux_videos_url
  end
end
