require "test_helper"

class NumeroDemissionTvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_numero_demission_tv = _numero_demission_tvs(:one)
  end

  test "should get index" do
    get _numero_demission_tvs_url
    assert_response :success
  end

  test "should get new" do
    get new__numero_demission_tv_url
    assert_response :success
  end

  test "should create _numero_demission_tv" do
    assert_difference("NumeroDemissionTv.count") do
      post _numero_demission_tvs_url, params: { _numero_demission_tv: { _numero_demission_tvs_clip_id: @_numero_demission_tv._numero_demission_tvs_clip_id, _numero_demission_tvs_emission_tv_numero_id: @_numero_demission_tv._numero_demission_tvs_emission_tv_numero_id, _numero_demission_tvs_id_emission_tv_id: @_numero_demission_tv._numero_demission_tvs_id_emission_tv_id, _numero_demission_tvs_people_id: @_numero_demission_tv._numero_demission_tvs_people_id, _numero_demission_tvs_presentateur_id: @_numero_demission_tv._numero_demission_tvs_presentateur_id, _numero_demission_tvs_special_id: @_numero_demission_tv._numero_demission_tvs_special_id, acceptregles: @_numero_demission_tv.acceptregles, comment: @_numero_demission_tv.comment, date_aaaa: @_numero_demission_tv.date_aaaa, date_jj: @_numero_demission_tv.date_jj, date_mm: @_numero_demission_tv.date_mm, duree: @_numero_demission_tv.duree, image: @_numero_demission_tv.image, infos: @_numero_demission_tv.infos, statut_prop: @_numero_demission_tv.statut_prop, titre: @_numero_demission_tv.titre, titre_original: @_numero_demission_tv.titre_original, youtube: @_numero_demission_tv.youtube } }
    end

    assert_redirected_to _numero_demission_tv_url(NumeroDemissionTv.last)
  end

  test "should show _numero_demission_tv" do
    get _numero_demission_tv_url(@_numero_demission_tv)
    assert_response :success
  end

  test "should get edit" do
    get edit__numero_demission_tv_url(@_numero_demission_tv)
    assert_response :success
  end

  test "should update _numero_demission_tv" do
    patch _numero_demission_tv_url(@_numero_demission_tv), params: { _numero_demission_tv: { _numero_demission_tvs_clip_id: @_numero_demission_tv._numero_demission_tvs_clip_id, _numero_demission_tvs_emission_tv_numero_id: @_numero_demission_tv._numero_demission_tvs_emission_tv_numero_id, _numero_demission_tvs_id_emission_tv_id: @_numero_demission_tv._numero_demission_tvs_id_emission_tv_id, _numero_demission_tvs_people_id: @_numero_demission_tv._numero_demission_tvs_people_id, _numero_demission_tvs_presentateur_id: @_numero_demission_tv._numero_demission_tvs_presentateur_id, _numero_demission_tvs_special_id: @_numero_demission_tv._numero_demission_tvs_special_id, acceptregles: @_numero_demission_tv.acceptregles, comment: @_numero_demission_tv.comment, date_aaaa: @_numero_demission_tv.date_aaaa, date_jj: @_numero_demission_tv.date_jj, date_mm: @_numero_demission_tv.date_mm, duree: @_numero_demission_tv.duree, image: @_numero_demission_tv.image, infos: @_numero_demission_tv.infos, statut_prop: @_numero_demission_tv.statut_prop, titre: @_numero_demission_tv.titre, titre_original: @_numero_demission_tv.titre_original, youtube: @_numero_demission_tv.youtube } }
    assert_redirected_to _numero_demission_tv_url(@_numero_demission_tv)
  end

  test "should destroy _numero_demission_tv" do
    assert_difference("NumeroDemissionTv.count", -1) do
      delete _numero_demission_tv_url(@_numero_demission_tv)
    end

    assert_redirected_to _numero_demission_tvs_url
  end
end
