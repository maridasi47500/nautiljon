require "test_helper"

class OstsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ost = osts(:one)
  end

  test "should get index" do
    get osts_url
    assert_response :success
  end

  test "should get new" do
    get new_ost_url
    assert_response :success
  end

  test "should create ost" do
    assert_difference("Ost.count") do
      post osts_url, params: { ost: { acceptregles: @ost.acceptregles, bonus_cd: @ost.bonus_cd, comment: @ost.comment, date_aaaa: @ost.date_aaaa, date_jj: @ost.date_jj, date_mm: @ost.date_mm, image: @ost.image, infos: @ost.infos, osts_am_id: @ost.osts_am_id, osts_anime_id: @ost.osts_anime_id, osts_distributeurs_id: @ost.osts_distributeurs_id, osts_drama_id: @ost.osts_drama_id, osts_emission_tv_id: @ost.osts_emission_tv_id, osts_groupes_id: @ost.osts_groupes_id, osts_jv_id: @ost.osts_jv_id, osts_labels_id: @ost.osts_labels_id, osts_ln_id: @ost.osts_ln_id, osts_monnaie_id: @ost.osts_monnaie_id, osts_ost_id: @ost.osts_ost_id, osts_people_id: @ost.osts_people_id, osts_plateforme_id: @ost.osts_plateforme_id, osts_role_id: @ost.osts_role_id, osts_type_id: @ost.osts_type_id, prix: @ost.prix, ref: @ost.ref, sametracklist: @ost.sametracklist, statut_prop: @ost.statut_prop, titre: @ost.titre, titre_alternatif: @ost.titre_alternatif, titre_original: @ost.titre_original, titre_original_latin: @ost.titre_original_latin, titre_us: @ost.titre_us } }
    end

    assert_redirected_to ost_url(Ost.last)
  end

  test "should show ost" do
    get ost_url(@ost)
    assert_response :success
  end

  test "should get edit" do
    get edit_ost_url(@ost)
    assert_response :success
  end

  test "should update ost" do
    patch ost_url(@ost), params: { ost: { acceptregles: @ost.acceptregles, bonus_cd: @ost.bonus_cd, comment: @ost.comment, date_aaaa: @ost.date_aaaa, date_jj: @ost.date_jj, date_mm: @ost.date_mm, image: @ost.image, infos: @ost.infos, osts_am_id: @ost.osts_am_id, osts_anime_id: @ost.osts_anime_id, osts_distributeurs_id: @ost.osts_distributeurs_id, osts_drama_id: @ost.osts_drama_id, osts_emission_tv_id: @ost.osts_emission_tv_id, osts_groupes_id: @ost.osts_groupes_id, osts_jv_id: @ost.osts_jv_id, osts_labels_id: @ost.osts_labels_id, osts_ln_id: @ost.osts_ln_id, osts_monnaie_id: @ost.osts_monnaie_id, osts_ost_id: @ost.osts_ost_id, osts_people_id: @ost.osts_people_id, osts_plateforme_id: @ost.osts_plateforme_id, osts_role_id: @ost.osts_role_id, osts_type_id: @ost.osts_type_id, prix: @ost.prix, ref: @ost.ref, sametracklist: @ost.sametracklist, statut_prop: @ost.statut_prop, titre: @ost.titre, titre_alternatif: @ost.titre_alternatif, titre_original: @ost.titre_original, titre_original_latin: @ost.titre_original_latin, titre_us: @ost.titre_us } }
    assert_redirected_to ost_url(@ost)
  end

  test "should destroy ost" do
    assert_difference("Ost.count", -1) do
      delete ost_url(@ost)
    end

    assert_redirected_to osts_url
  end
end
