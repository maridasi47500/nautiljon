require "test_helper"

class GeneriqueDeJeuVideosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_generique_de_jeu_video = _generique_de_jeu_videos(:one)
  end

  test "should get index" do
    get _generique_de_jeu_videos_url
    assert_response :success
  end

  test "should get new" do
    get new__generique_de_jeu_video_url
    assert_response :success
  end

  test "should create _generique_de_jeu_video" do
    assert_difference("GeneriqueDeJeuVideo.count") do
      post _generique_de_jeu_videos_url, params: { _generique_de_jeu_video: { _generique_de_jeu_videos_jv_generic_id: @_generique_de_jeu_video._generique_de_jeu_videos_jv_generic_id, _generique_de_jeu_videos_jv_id: @_generique_de_jeu_video._generique_de_jeu_videos_jv_id, _generique_de_jeu_videos_staff_people_id: @_generique_de_jeu_video._generique_de_jeu_videos_staff_people_id, _generique_de_jeu_videos_staff_role_id: @_generique_de_jeu_video._generique_de_jeu_videos_staff_role_id, _generique_de_jeu_videos_type_id: @_generique_de_jeu_video._generique_de_jeu_videos_type_id, acceptregles: @_generique_de_jeu_video.acceptregles, comment: @_generique_de_jeu_video.comment, date_aaaa: @_generique_de_jeu_video.date_aaaa, date_jj: @_generique_de_jeu_video.date_jj, date_mm: @_generique_de_jeu_video.date_mm, description: @_generique_de_jeu_video.description, instrumental: @_generique_de_jeu_video.instrumental, membre_show: @_generique_de_jeu_video.membre_show, number: @_generique_de_jeu_video.number, paroles: @_generique_de_jeu_video.paroles, paroles_trad: @_generique_de_jeu_video.paroles_trad, statut_prop: @_generique_de_jeu_video.statut_prop, titre: @_generique_de_jeu_video.titre, titre_original: @_generique_de_jeu_video.titre_original, youtube: @_generique_de_jeu_video.youtube } }
    end

    assert_redirected_to _generique_de_jeu_video_url(GeneriqueDeJeuVideo.last)
  end

  test "should show _generique_de_jeu_video" do
    get _generique_de_jeu_video_url(@_generique_de_jeu_video)
    assert_response :success
  end

  test "should get edit" do
    get edit__generique_de_jeu_video_url(@_generique_de_jeu_video)
    assert_response :success
  end

  test "should update _generique_de_jeu_video" do
    patch _generique_de_jeu_video_url(@_generique_de_jeu_video), params: { _generique_de_jeu_video: { _generique_de_jeu_videos_jv_generic_id: @_generique_de_jeu_video._generique_de_jeu_videos_jv_generic_id, _generique_de_jeu_videos_jv_id: @_generique_de_jeu_video._generique_de_jeu_videos_jv_id, _generique_de_jeu_videos_staff_people_id: @_generique_de_jeu_video._generique_de_jeu_videos_staff_people_id, _generique_de_jeu_videos_staff_role_id: @_generique_de_jeu_video._generique_de_jeu_videos_staff_role_id, _generique_de_jeu_videos_type_id: @_generique_de_jeu_video._generique_de_jeu_videos_type_id, acceptregles: @_generique_de_jeu_video.acceptregles, comment: @_generique_de_jeu_video.comment, date_aaaa: @_generique_de_jeu_video.date_aaaa, date_jj: @_generique_de_jeu_video.date_jj, date_mm: @_generique_de_jeu_video.date_mm, description: @_generique_de_jeu_video.description, instrumental: @_generique_de_jeu_video.instrumental, membre_show: @_generique_de_jeu_video.membre_show, number: @_generique_de_jeu_video.number, paroles: @_generique_de_jeu_video.paroles, paroles_trad: @_generique_de_jeu_video.paroles_trad, statut_prop: @_generique_de_jeu_video.statut_prop, titre: @_generique_de_jeu_video.titre, titre_original: @_generique_de_jeu_video.titre_original, youtube: @_generique_de_jeu_video.youtube } }
    assert_redirected_to _generique_de_jeu_video_url(@_generique_de_jeu_video)
  end

  test "should destroy _generique_de_jeu_video" do
    assert_difference("GeneriqueDeJeuVideo.count", -1) do
      delete _generique_de_jeu_video_url(@_generique_de_jeu_video)
    end

    assert_redirected_to _generique_de_jeu_videos_url
  end
end
