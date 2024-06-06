require "test_helper"

class CdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_cd = _cds(:one)
  end

  test "should get index" do
    get _cds_url
    assert_response :success
  end

  test "should get new" do
    get new__cd_url
    assert_response :success
  end

  test "should create _cd" do
    assert_difference("Cd.count") do
      post _cds_url, params: { _cd: { _cds_am_id: @_cd._cds_am_id, _cds_anime_id: @_cd._cds_anime_id, _cds_bonus_id: @_cd._cds_bonus_id, _cds_cd_id: @_cd._cds_cd_id, _cds_distributeurs_id: @_cd._cds_distributeurs_id, _cds_drama_id: @_cd._cds_drama_id, _cds_emission_tv_id: @_cd._cds_emission_tv_id, _cds_groupes_id: @_cd._cds_groupes_id, _cds_jv_id: @_cd._cds_jv_id, _cds_labels_id: @_cd._cds_labels_id, _cds_ln_id: @_cd._cds_ln_id, _cds_manga_id: @_cd._cds_manga_id, _cds_monnaie_id: @_cd._cds_monnaie_id, _cds_people_id: @_cd._cds_people_id, _cds_role_id: @_cd._cds_role_id, _cds_type_id: @_cd._cds_type_id, acceptregles: @_cd.acceptregles, comment: @_cd.comment, date_aaaa: @_cd.date_aaaa, date_jj: @_cd.date_jj, date_mm: @_cd.date_mm, image: @_cd.image, infos: @_cd.infos, prix: @_cd.prix, ref: @_cd.ref, sametracklist: @_cd.sametracklist, statut_prop: @_cd.statut_prop, titre: @_cd.titre, titre_original: @_cd.titre_original, titre_original_latin: @_cd.titre_original_latin } }
    end

    assert_redirected_to _cd_url(Cd.last)
  end

  test "should show _cd" do
    get _cd_url(@_cd)
    assert_response :success
  end

  test "should get edit" do
    get edit__cd_url(@_cd)
    assert_response :success
  end

  test "should update _cd" do
    patch _cd_url(@_cd), params: { _cd: { _cds_am_id: @_cd._cds_am_id, _cds_anime_id: @_cd._cds_anime_id, _cds_bonus_id: @_cd._cds_bonus_id, _cds_cd_id: @_cd._cds_cd_id, _cds_distributeurs_id: @_cd._cds_distributeurs_id, _cds_drama_id: @_cd._cds_drama_id, _cds_emission_tv_id: @_cd._cds_emission_tv_id, _cds_groupes_id: @_cd._cds_groupes_id, _cds_jv_id: @_cd._cds_jv_id, _cds_labels_id: @_cd._cds_labels_id, _cds_ln_id: @_cd._cds_ln_id, _cds_manga_id: @_cd._cds_manga_id, _cds_monnaie_id: @_cd._cds_monnaie_id, _cds_people_id: @_cd._cds_people_id, _cds_role_id: @_cd._cds_role_id, _cds_type_id: @_cd._cds_type_id, acceptregles: @_cd.acceptregles, comment: @_cd.comment, date_aaaa: @_cd.date_aaaa, date_jj: @_cd.date_jj, date_mm: @_cd.date_mm, image: @_cd.image, infos: @_cd.infos, prix: @_cd.prix, ref: @_cd.ref, sametracklist: @_cd.sametracklist, statut_prop: @_cd.statut_prop, titre: @_cd.titre, titre_original: @_cd.titre_original, titre_original_latin: @_cd.titre_original_latin } }
    assert_redirected_to _cd_url(@_cd)
  end

  test "should destroy _cd" do
    assert_difference("Cd.count", -1) do
      delete _cd_url(@_cd)
    end

    assert_redirected_to _cds_url
  end
end
