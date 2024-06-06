require "test_helper"

class PhotobooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_photobook = _photobooks(:one)
  end

  test "should get index" do
    get _photobooks_url
    assert_response :success
  end

  test "should get new" do
    get new__photobook_url
    assert_response :success
  end

  test "should create _photobook" do
    assert_difference("Photobook.count") do
      post _photobooks_url, params: { _photobook: { _photobooks_actualite_id: @_photobook._photobooks_actualite_id, _photobooks_actualite_mini_id: @_photobook._photobooks_actualite_mini_id, _photobooks_am_id: @_photobook._photobooks_am_id, _photobooks_anime_id: @_photobook._photobooks_anime_id, _photobooks_bonus_id: @_photobook._photobooks_bonus_id, _photobooks_cd_id: @_photobook._photobooks_cd_id, _photobooks_disponibilite_id: @_photobook._photobooks_disponibilite_id, _photobooks_drama_id: @_photobook._photobooks_drama_id, _photobooks_editeurs_vf_id: @_photobook._photobooks_editeurs_vf_id, _photobooks_editeurs_vo_id: @_photobook._photobooks_editeurs_vo_id, _photobooks_france_id: @_photobook._photobooks_france_id, _photobooks_goodies_id: @_photobook._photobooks_goodies_id, _photobooks_groupes_id: @_photobook._photobooks_groupes_id, _photobooks_illustrations_id: @_photobook._photobooks_illustrations_id, _photobooks_pays_id: @_photobook._photobooks_pays_id, _photobooks_people_id: @_photobook._photobooks_people_id, _photobooks_photobook_id: @_photobook._photobooks_photobook_id, _photobooks_public_averti_id: @_photobook._photobooks_public_averti_id, _photobooks_role_id: @_photobook._photobooks_role_id, _photobooks_societe_people_id: @_photobook._photobooks_societe_people_id, _photobooks_societe_role_id: @_photobook._photobooks_societe_role_id, _photobooks_type_id: @_photobook._photobooks_type_id, acceptregles: @_photobook.acceptregles, comment: @_photobook.comment, date_parution_vf_aaaa: @_photobook.date_parution_vf_aaaa, date_parution_vf_jj: @_photobook.date_parution_vf_jj, date_parution_vf_mm: @_photobook.date_parution_vf_mm, date_parution_vo_aaaa: @_photobook.date_parution_vo_aaaa, date_parution_vo_jj: @_photobook.date_parution_vo_jj, date_parution_vo_mm: @_photobook.date_parution_vo_mm, ean: @_photobook.ean, image: @_photobook.image, image_vo: @_photobook.image_vo, infos: @_photobook.infos, nb_pages: @_photobook.nb_pages, prix: @_photobook.prix, ref: @_photobook.ref, resume: @_photobook.resume, site: @_photobook.site, statut_prop: @_photobook.statut_prop, titre: @_photobook.titre, titre_alternatif: @_photobook.titre_alternatif, titre_original: @_photobook.titre_original, titre_original_latin: @_photobook.titre_original_latin } }
    end

    assert_redirected_to _photobook_url(Photobook.last)
  end

  test "should show _photobook" do
    get _photobook_url(@_photobook)
    assert_response :success
  end

  test "should get edit" do
    get edit__photobook_url(@_photobook)
    assert_response :success
  end

  test "should update _photobook" do
    patch _photobook_url(@_photobook), params: { _photobook: { _photobooks_actualite_id: @_photobook._photobooks_actualite_id, _photobooks_actualite_mini_id: @_photobook._photobooks_actualite_mini_id, _photobooks_am_id: @_photobook._photobooks_am_id, _photobooks_anime_id: @_photobook._photobooks_anime_id, _photobooks_bonus_id: @_photobook._photobooks_bonus_id, _photobooks_cd_id: @_photobook._photobooks_cd_id, _photobooks_disponibilite_id: @_photobook._photobooks_disponibilite_id, _photobooks_drama_id: @_photobook._photobooks_drama_id, _photobooks_editeurs_vf_id: @_photobook._photobooks_editeurs_vf_id, _photobooks_editeurs_vo_id: @_photobook._photobooks_editeurs_vo_id, _photobooks_france_id: @_photobook._photobooks_france_id, _photobooks_goodies_id: @_photobook._photobooks_goodies_id, _photobooks_groupes_id: @_photobook._photobooks_groupes_id, _photobooks_illustrations_id: @_photobook._photobooks_illustrations_id, _photobooks_pays_id: @_photobook._photobooks_pays_id, _photobooks_people_id: @_photobook._photobooks_people_id, _photobooks_photobook_id: @_photobook._photobooks_photobook_id, _photobooks_public_averti_id: @_photobook._photobooks_public_averti_id, _photobooks_role_id: @_photobook._photobooks_role_id, _photobooks_societe_people_id: @_photobook._photobooks_societe_people_id, _photobooks_societe_role_id: @_photobook._photobooks_societe_role_id, _photobooks_type_id: @_photobook._photobooks_type_id, acceptregles: @_photobook.acceptregles, comment: @_photobook.comment, date_parution_vf_aaaa: @_photobook.date_parution_vf_aaaa, date_parution_vf_jj: @_photobook.date_parution_vf_jj, date_parution_vf_mm: @_photobook.date_parution_vf_mm, date_parution_vo_aaaa: @_photobook.date_parution_vo_aaaa, date_parution_vo_jj: @_photobook.date_parution_vo_jj, date_parution_vo_mm: @_photobook.date_parution_vo_mm, ean: @_photobook.ean, image: @_photobook.image, image_vo: @_photobook.image_vo, infos: @_photobook.infos, nb_pages: @_photobook.nb_pages, prix: @_photobook.prix, ref: @_photobook.ref, resume: @_photobook.resume, site: @_photobook.site, statut_prop: @_photobook.statut_prop, titre: @_photobook.titre, titre_alternatif: @_photobook.titre_alternatif, titre_original: @_photobook.titre_original, titre_original_latin: @_photobook.titre_original_latin } }
    assert_redirected_to _photobook_url(@_photobook)
  end

  test "should destroy _photobook" do
    assert_difference("Photobook.count", -1) do
      delete _photobook_url(@_photobook)
    end

    assert_redirected_to _photobooks_url
  end
end
