require "test_helper"

class ArtbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artbook = artbooks(:one)
  end

  test "should get index" do
    get artbooks_url
    assert_response :success
  end

  test "should get new" do
    get new_artbook_url
    assert_response :success
  end

  test "should create artbook" do
    assert_difference("Artbook.count") do
      post artbooks_url, params: { artbook: { acceptregles: @artbook.acceptregles, artbooks_actualite_id: @artbook.artbooks_actualite_id, artbooks_actualite_mini_id: @artbook.artbooks_actualite_mini_id, artbooks_am_id: @artbook.artbooks_am_id, artbooks_anime_id: @artbook.artbooks_anime_id, artbooks_artbook_id: @artbook.artbooks_artbook_id, artbooks_culture_id: @artbook.artbooks_culture_id, artbooks_doujin_id: @artbook.artbooks_doujin_id, artbooks_doujinshi_id: @artbook.artbooks_doujinshi_id, artbooks_drama_id: @artbook.artbooks_drama_id, artbooks_editeurs_vf_id: @artbook.artbooks_editeurs_vf_id, artbooks_editeurs_vo_id: @artbook.artbooks_editeurs_vo_id, artbooks_france_id: @artbook.artbooks_france_id, artbooks_goodies_id: @artbook.artbooks_goodies_id, artbooks_groupes_id: @artbook.artbooks_groupes_id, artbooks_illustrations_id: @artbook.artbooks_illustrations_id, artbooks_jv_id: @artbook.artbooks_jv_id, artbooks_litterature_asiatique_id: @artbook.artbooks_litterature_asiatique_id, artbooks_ln_id: @artbook.artbooks_ln_id, artbooks_manga_id: @artbook.artbooks_manga_id, artbooks_pays_id: @artbook.artbooks_pays_id, artbooks_people_id: @artbook.artbooks_people_id, artbooks_public_averti_id: @artbook.artbooks_public_averti_id, artbooks_role_id: @artbook.artbooks_role_id, artbooks_societe_people_id: @artbook.artbooks_societe_people_id, artbooks_societe_role_id: @artbook.artbooks_societe_role_id, artbooks_type_id: @artbook.artbooks_type_id, comment: @artbook.comment, crossover: @artbook.crossover, date_parution_vf_aaaa: @artbook.date_parution_vf_aaaa, date_parution_vf_jj: @artbook.date_parution_vf_jj, date_parution_vf_mm: @artbook.date_parution_vf_mm, date_parution_vo_aaaa: @artbook.date_parution_vo_aaaa, date_parution_vo_jj: @artbook.date_parution_vo_jj, date_parution_vo_mm: @artbook.date_parution_vo_mm, ean: @artbook.ean, image: @artbook.image, image_vo: @artbook.image_vo, infos: @artbook.infos, nb_pages: @artbook.nb_pages, prix: @artbook.prix, resume: @artbook.resume, statut_prop: @artbook.statut_prop, titre: @artbook.titre, titre_alternatif: @artbook.titre_alternatif, titre_original: @artbook.titre_original, titre_original_latin: @artbook.titre_original_latin } }
    end

    assert_redirected_to artbook_url(Artbook.last)
  end

  test "should show artbook" do
    get artbook_url(@artbook)
    assert_response :success
  end

  test "should get edit" do
    get edit_artbook_url(@artbook)
    assert_response :success
  end

  test "should update artbook" do
    patch artbook_url(@artbook), params: { artbook: { acceptregles: @artbook.acceptregles, artbooks_actualite_id: @artbook.artbooks_actualite_id, artbooks_actualite_mini_id: @artbook.artbooks_actualite_mini_id, artbooks_am_id: @artbook.artbooks_am_id, artbooks_anime_id: @artbook.artbooks_anime_id, artbooks_artbook_id: @artbook.artbooks_artbook_id, artbooks_culture_id: @artbook.artbooks_culture_id, artbooks_doujin_id: @artbook.artbooks_doujin_id, artbooks_doujinshi_id: @artbook.artbooks_doujinshi_id, artbooks_drama_id: @artbook.artbooks_drama_id, artbooks_editeurs_vf_id: @artbook.artbooks_editeurs_vf_id, artbooks_editeurs_vo_id: @artbook.artbooks_editeurs_vo_id, artbooks_france_id: @artbook.artbooks_france_id, artbooks_goodies_id: @artbook.artbooks_goodies_id, artbooks_groupes_id: @artbook.artbooks_groupes_id, artbooks_illustrations_id: @artbook.artbooks_illustrations_id, artbooks_jv_id: @artbook.artbooks_jv_id, artbooks_litterature_asiatique_id: @artbook.artbooks_litterature_asiatique_id, artbooks_ln_id: @artbook.artbooks_ln_id, artbooks_manga_id: @artbook.artbooks_manga_id, artbooks_pays_id: @artbook.artbooks_pays_id, artbooks_people_id: @artbook.artbooks_people_id, artbooks_public_averti_id: @artbook.artbooks_public_averti_id, artbooks_role_id: @artbook.artbooks_role_id, artbooks_societe_people_id: @artbook.artbooks_societe_people_id, artbooks_societe_role_id: @artbook.artbooks_societe_role_id, artbooks_type_id: @artbook.artbooks_type_id, comment: @artbook.comment, crossover: @artbook.crossover, date_parution_vf_aaaa: @artbook.date_parution_vf_aaaa, date_parution_vf_jj: @artbook.date_parution_vf_jj, date_parution_vf_mm: @artbook.date_parution_vf_mm, date_parution_vo_aaaa: @artbook.date_parution_vo_aaaa, date_parution_vo_jj: @artbook.date_parution_vo_jj, date_parution_vo_mm: @artbook.date_parution_vo_mm, ean: @artbook.ean, image: @artbook.image, image_vo: @artbook.image_vo, infos: @artbook.infos, nb_pages: @artbook.nb_pages, prix: @artbook.prix, resume: @artbook.resume, statut_prop: @artbook.statut_prop, titre: @artbook.titre, titre_alternatif: @artbook.titre_alternatif, titre_original: @artbook.titre_original, titre_original_latin: @artbook.titre_original_latin } }
    assert_redirected_to artbook_url(@artbook)
  end

  test "should destroy artbook" do
    assert_difference("Artbook.count", -1) do
      delete artbook_url(@artbook)
    end

    assert_redirected_to artbooks_url
  end
end
