require "test_helper"

class GoodiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goody = _goodies(:one)
  end

  test "should get index" do
    get _goodies_url
    assert_response :success
  end

  test "should get new" do
    get new__goody_url
    assert_response :success
  end

  test "should create _goody" do
    assert_difference("Goody.count") do
      post _goodies_url, params: { _goody: { _goodies_actualite_id: @_goody._goodies_actualite_id, _goodies_actualite_mini_id: @_goody._goodies_actualite_mini_id, _goodies_am_id: @_goody._goodies_am_id, _goodies_anime_id: @_goody._goodies_anime_id, _goodies_artbook_id: @_goody._goodies_artbook_id, _goodies_bonus_id: @_goody._goodies_bonus_id, _goodies_cd_id: @_goody._goodies_cd_id, _goodies_clip_id: @_goody._goodies_clip_id, _goodies_doujinshi_id: @_goody._goodies_doujinshi_id, _goodies_drama_id: @_goody._goodies_drama_id, _goodies_dvd_id: @_goody._goodies_dvd_id, _goodies_editeurs_vf_id: @_goody._goodies_editeurs_vf_id, _goodies_editeurs_vo_id: @_goody._goodies_editeurs_vo_id, _goodies_goodies_id: @_goody._goodies_goodies_id, _goodies_groupes_id: @_goody._goodies_groupes_id, _goodies_jv_id: @_goody._goodies_jv_id, _goodies_jv_perso_id: @_goody._goodies_jv_perso_id, _goodies_litterature_asiatique_id: @_goody._goodies_litterature_asiatique_id, _goodies_ln_id: @_goody._goodies_ln_id, _goodies_manga_id: @_goody._goodies_manga_id, _goodies_matiere_id: @_goody._goodies_matiere_id, _goodies_ost_id: @_goody._goodies_ost_id, _goodies_pays_id: @_goody._goodies_pays_id, _goodies_people_id: @_goody._goodies_people_id, _goodies_perso_id: @_goody._goodies_perso_id, _goodies_perso_manga_id: @_goody._goodies_perso_manga_id, _goodies_photobook_id: @_goody._goodies_photobook_id, _goodies_public_averti_id: @_goody._goodies_public_averti_id, _goodies_societe_people_id: @_goody._goodies_societe_people_id, _goodies_societe_role_id: @_goody._goodies_societe_role_id, _goodies_staff_people_id: @_goody._goodies_staff_people_id, _goodies_staff_role_id: @_goody._goodies_staff_role_id, _goodies_type_id: @_goody._goodies_type_id, acceptregles: @_goody.acceptregles, articule: @_goody.articule, comment: @_goody.comment, commerce: @_goody.commerce, date_parution_vf_aaaa: @_goody.date_parution_vf_aaaa, date_parution_vf_jj: @_goody.date_parution_vf_jj, date_parution_vf_mm: @_goody.date_parution_vf_mm, date_parution_vo_aaaa: @_goody.date_parution_vo_aaaa, date_parution_vo_jj: @_goody.date_parution_vo_jj, date_parution_vo_mm: @_goody.date_parution_vo_mm, date_reedition_aaaa: @_goody.date_reedition_aaaa, date_reedition_jj: @_goody.date_reedition_jj, date_reedition_mm: @_goody.date_reedition_mm, dimensions_h: @_goody.dimensions_h, dimensions_w: @_goody.dimensions_w, dimensions_z: @_goody.dimensions_z, ean: @_goody.ean, echelle: @_goody.echelle, image: @_goody.image, image_vo: @_goody.image_vo, infos: @_goody.infos, poids: @_goody.poids, prix: @_goody.prix, ref: @_goody.ref, resume: @_goody.resume, sculpteur: @_goody.sculpteur, site: @_goody.site, statut_prop: @_goody.statut_prop, titre: @_goody.titre, titre_alternatif: @_goody.titre_alternatif, titre_original: @_goody.titre_original, titre_original_latin: @_goody.titre_original_latin, youtube: @_goody.youtube } }
    end

    assert_redirected_to _goody_url(Goody.last)
  end

  test "should show _goody" do
    get _goody_url(@_goody)
    assert_response :success
  end

  test "should get edit" do
    get edit__goody_url(@_goody)
    assert_response :success
  end

  test "should update _goody" do
    patch _goody_url(@_goody), params: { _goody: { _goodies_actualite_id: @_goody._goodies_actualite_id, _goodies_actualite_mini_id: @_goody._goodies_actualite_mini_id, _goodies_am_id: @_goody._goodies_am_id, _goodies_anime_id: @_goody._goodies_anime_id, _goodies_artbook_id: @_goody._goodies_artbook_id, _goodies_bonus_id: @_goody._goodies_bonus_id, _goodies_cd_id: @_goody._goodies_cd_id, _goodies_clip_id: @_goody._goodies_clip_id, _goodies_doujinshi_id: @_goody._goodies_doujinshi_id, _goodies_drama_id: @_goody._goodies_drama_id, _goodies_dvd_id: @_goody._goodies_dvd_id, _goodies_editeurs_vf_id: @_goody._goodies_editeurs_vf_id, _goodies_editeurs_vo_id: @_goody._goodies_editeurs_vo_id, _goodies_goodies_id: @_goody._goodies_goodies_id, _goodies_groupes_id: @_goody._goodies_groupes_id, _goodies_jv_id: @_goody._goodies_jv_id, _goodies_jv_perso_id: @_goody._goodies_jv_perso_id, _goodies_litterature_asiatique_id: @_goody._goodies_litterature_asiatique_id, _goodies_ln_id: @_goody._goodies_ln_id, _goodies_manga_id: @_goody._goodies_manga_id, _goodies_matiere_id: @_goody._goodies_matiere_id, _goodies_ost_id: @_goody._goodies_ost_id, _goodies_pays_id: @_goody._goodies_pays_id, _goodies_people_id: @_goody._goodies_people_id, _goodies_perso_id: @_goody._goodies_perso_id, _goodies_perso_manga_id: @_goody._goodies_perso_manga_id, _goodies_photobook_id: @_goody._goodies_photobook_id, _goodies_public_averti_id: @_goody._goodies_public_averti_id, _goodies_societe_people_id: @_goody._goodies_societe_people_id, _goodies_societe_role_id: @_goody._goodies_societe_role_id, _goodies_staff_people_id: @_goody._goodies_staff_people_id, _goodies_staff_role_id: @_goody._goodies_staff_role_id, _goodies_type_id: @_goody._goodies_type_id, acceptregles: @_goody.acceptregles, articule: @_goody.articule, comment: @_goody.comment, commerce: @_goody.commerce, date_parution_vf_aaaa: @_goody.date_parution_vf_aaaa, date_parution_vf_jj: @_goody.date_parution_vf_jj, date_parution_vf_mm: @_goody.date_parution_vf_mm, date_parution_vo_aaaa: @_goody.date_parution_vo_aaaa, date_parution_vo_jj: @_goody.date_parution_vo_jj, date_parution_vo_mm: @_goody.date_parution_vo_mm, date_reedition_aaaa: @_goody.date_reedition_aaaa, date_reedition_jj: @_goody.date_reedition_jj, date_reedition_mm: @_goody.date_reedition_mm, dimensions_h: @_goody.dimensions_h, dimensions_w: @_goody.dimensions_w, dimensions_z: @_goody.dimensions_z, ean: @_goody.ean, echelle: @_goody.echelle, image: @_goody.image, image_vo: @_goody.image_vo, infos: @_goody.infos, poids: @_goody.poids, prix: @_goody.prix, ref: @_goody.ref, resume: @_goody.resume, sculpteur: @_goody.sculpteur, site: @_goody.site, statut_prop: @_goody.statut_prop, titre: @_goody.titre, titre_alternatif: @_goody.titre_alternatif, titre_original: @_goody.titre_original, titre_original_latin: @_goody.titre_original_latin, youtube: @_goody.youtube } }
    assert_redirected_to _goody_url(@_goody)
  end

  test "should destroy _goody" do
    assert_difference("Goody.count", -1) do
      delete _goody_url(@_goody)
    end

    assert_redirected_to _goodies_url
  end
end
