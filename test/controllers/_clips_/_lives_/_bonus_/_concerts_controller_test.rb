require "test_helper"

class Clips::Lives::Bonus::ConcertsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_clips___lives___bonus___concert = _clips___lives___bonus___concerts(:one)
  end

  test "should get index" do
    get _clips___lives___bonus___concerts_url
    assert_response :success
  end

  test "should get new" do
    get new__clips___lives___bonus___concert_url
    assert_response :success
  end

  test "should create _clips___lives___bonus___concert" do
    assert_difference("Clips::Lives::Bonus::Concert.count") do
      post _clips___lives___bonus___concerts_url, params: { _clips___lives___bonus___concert: { _clips_/_lives_/_bonus_/_concerts_clip_id: @_clips___lives___bonus___concert._clips_/_lives_/_bonus_/_concerts_clip_id, _clips_/_lives_/_bonus_/_concerts_emission_tv_numero_id: @_clips___lives___bonus___concert._clips_/_lives_/_bonus_/_concerts_emission_tv_numero_id, _clips_/_lives_/_bonus_/_concerts_people_id: @_clips___lives___bonus___concert._clips_/_lives_/_bonus_/_concerts_people_id, _clips_/_lives_/_bonus_/_concerts_role_id: @_clips___lives___bonus___concert._clips_/_lives_/_bonus_/_concerts_role_id, _clips_/_lives_/_bonus_/_concerts_type_bonus_id: @_clips___lives___bonus___concert._clips_/_lives_/_bonus_/_concerts_type_bonus_id, _clips_/_lives_/_bonus_/_concerts_type_id: @_clips___lives___bonus___concert._clips_/_lives_/_bonus_/_concerts_type_id, acceptregles: @_clips___lives___bonus___concert.acceptregles, comment: @_clips___lives___bonus___concert.comment, date_aaaa: @_clips___lives___bonus___concert.date_aaaa, date_jj: @_clips___lives___bonus___concert.date_jj, date_mm: @_clips___lives___bonus___concert.date_mm, image: @_clips___lives___bonus___concert.image, infos: @_clips___lives___bonus___concert.infos, statut_prop: @_clips___lives___bonus___concert.statut_prop, titre: @_clips___lives___bonus___concert.titre, titre_original: @_clips___lives___bonus___concert.titre_original, youtube: @_clips___lives___bonus___concert.youtube } }
    end

    assert_redirected_to _clips___lives___bonus___concert_url(Clips::Lives::Bonus::Concert.last)
  end

  test "should show _clips___lives___bonus___concert" do
    get _clips___lives___bonus___concert_url(@_clips___lives___bonus___concert)
    assert_response :success
  end

  test "should get edit" do
    get edit__clips___lives___bonus___concert_url(@_clips___lives___bonus___concert)
    assert_response :success
  end

  test "should update _clips___lives___bonus___concert" do
    patch _clips___lives___bonus___concert_url(@_clips___lives___bonus___concert), params: { _clips___lives___bonus___concert: { _clips_/_lives_/_bonus_/_concerts_clip_id: @_clips___lives___bonus___concert._clips_/_lives_/_bonus_/_concerts_clip_id, _clips_/_lives_/_bonus_/_concerts_emission_tv_numero_id: @_clips___lives___bonus___concert._clips_/_lives_/_bonus_/_concerts_emission_tv_numero_id, _clips_/_lives_/_bonus_/_concerts_people_id: @_clips___lives___bonus___concert._clips_/_lives_/_bonus_/_concerts_people_id, _clips_/_lives_/_bonus_/_concerts_role_id: @_clips___lives___bonus___concert._clips_/_lives_/_bonus_/_concerts_role_id, _clips_/_lives_/_bonus_/_concerts_type_bonus_id: @_clips___lives___bonus___concert._clips_/_lives_/_bonus_/_concerts_type_bonus_id, _clips_/_lives_/_bonus_/_concerts_type_id: @_clips___lives___bonus___concert._clips_/_lives_/_bonus_/_concerts_type_id, acceptregles: @_clips___lives___bonus___concert.acceptregles, comment: @_clips___lives___bonus___concert.comment, date_aaaa: @_clips___lives___bonus___concert.date_aaaa, date_jj: @_clips___lives___bonus___concert.date_jj, date_mm: @_clips___lives___bonus___concert.date_mm, image: @_clips___lives___bonus___concert.image, infos: @_clips___lives___bonus___concert.infos, statut_prop: @_clips___lives___bonus___concert.statut_prop, titre: @_clips___lives___bonus___concert.titre, titre_original: @_clips___lives___bonus___concert.titre_original, youtube: @_clips___lives___bonus___concert.youtube } }
    assert_redirected_to _clips___lives___bonus___concert_url(@_clips___lives___bonus___concert)
  end

  test "should destroy _clips___lives___bonus___concert" do
    assert_difference("Clips::Lives::Bonus::Concert.count", -1) do
      delete _clips___lives___bonus___concert_url(@_clips___lives___bonus___concert)
    end

    assert_redirected_to _clips___lives___bonus___concerts_url
  end
end
