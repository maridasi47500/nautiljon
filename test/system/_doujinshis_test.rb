require "application_system_test_case"

class DoujinshisTest < ApplicationSystemTestCase
  setup do
    @_doujinshi = _doujinshis(:one)
  end

  test "visiting the index" do
    visit _doujinshis_url
    assert_selector "h1", text: "Doujinshis"
  end

  test "should create doujinshi" do
    visit _doujinshis_url
    click_on "New doujinshi"

    fill_in "Doujinshis actualite", with: @_doujinshi._doujinshis_actualite_id
    fill_in "Doujinshis actualite mini", with: @_doujinshi._doujinshis_actualite_mini_id
    fill_in "Doujinshis am", with: @_doujinshi._doujinshis_am_id
    fill_in "Doujinshis am plus", with: @_doujinshi._doujinshis_am_plus_id
    fill_in "Doujinshis anime", with: @_doujinshi._doujinshis_anime_id
    fill_in "Doujinshis anime plus", with: @_doujinshi._doujinshis_anime_plus_id
    fill_in "Doujinshis artbook", with: @_doujinshi._doujinshis_artbook_id
    fill_in "Doujinshis censure", with: @_doujinshi._doujinshis_censure_id
    fill_in "Doujinshis conventions", with: @_doujinshi._doujinshis_conventions_id
    fill_in "Doujinshis culture", with: @_doujinshi._doujinshis_culture_id
    fill_in "Doujinshis doujinshi", with: @_doujinshi._doujinshis_doujinshi_id
    fill_in "Doujinshis doujinshi plus", with: @_doujinshi._doujinshis_doujinshi_plus_id
    fill_in "Doujinshis drama", with: @_doujinshi._doujinshis_drama_id
    fill_in "Doujinshis drama plus", with: @_doujinshi._doujinshis_drama_plus_id
    fill_in "Doujinshis france", with: @_doujinshi._doujinshis_france_id
    fill_in "Doujinshis genres averti", with: @_doujinshi._doujinshis_genres_averti_id
    fill_in "Doujinshis genres", with: @_doujinshi._doujinshis_genres_id
    fill_in "Doujinshis gratuit", with: @_doujinshi._doujinshis_gratuit_id
    fill_in "Doujinshis groupes", with: @_doujinshi._doujinshis_groupes_id
    fill_in "Doujinshis jv", with: @_doujinshi._doujinshis_jv_id
    fill_in "Doujinshis jv perso", with: @_doujinshi._doujinshis_jv_perso_id
    fill_in "Doujinshis jv plus", with: @_doujinshi._doujinshis_jv_plus_id
    fill_in "Doujinshis litterature asiatique", with: @_doujinshi._doujinshis_litterature_asiatique_id
    fill_in "Doujinshis litterature asiatique plus", with: @_doujinshi._doujinshis_litterature_asiatique_plus_id
    fill_in "Doujinshis ln", with: @_doujinshi._doujinshis_ln_id
    fill_in "Doujinshis ln plus", with: @_doujinshi._doujinshis_ln_plus_id
    fill_in "Doujinshis manga", with: @_doujinshi._doujinshis_manga_id
    fill_in "Doujinshis manga plus", with: @_doujinshi._doujinshis_manga_plus_id
    fill_in "Doujinshis origine", with: @_doujinshi._doujinshis_origine_id
    fill_in "Doujinshis pays", with: @_doujinshi._doujinshis_pays_id
    fill_in "Doujinshis people", with: @_doujinshi._doujinshis_people_id
    fill_in "Doujinshis perso", with: @_doujinshi._doujinshis_perso_id
    fill_in "Doujinshis perso manga", with: @_doujinshi._doujinshis_perso_manga_id
    fill_in "Doujinshis perso plus", with: @_doujinshi._doujinshis_perso_plus_id
    fill_in "Doujinshis public averti", with: @_doujinshi._doujinshis_public_averti_id
    fill_in "Doujinshis quizz", with: @_doujinshi._doujinshis_quizz_id
    fill_in "Doujinshis role", with: @_doujinshi._doujinshis_role_id
    fill_in "Doujinshis staff people", with: @_doujinshi._doujinshis_staff_people_id
    fill_in "Doujinshis themes", with: @_doujinshi._doujinshis_themes_id
    fill_in "Doujinshis type", with: @_doujinshi._doujinshis_type_id
    fill_in "Acceptregles", with: @_doujinshi.acceptregles
    fill_in "Comment", with: @_doujinshi.comment
    fill_in "Date parution vf aaaa", with: @_doujinshi.date_parution_vf_aaaa
    fill_in "Date parution vf jj", with: @_doujinshi.date_parution_vf_jj
    fill_in "Date parution vf mm", with: @_doujinshi.date_parution_vf_mm
    fill_in "Date parution vo aaaa", with: @_doujinshi.date_parution_vo_aaaa
    fill_in "Date parution vo jj", with: @_doujinshi.date_parution_vo_jj
    fill_in "Date parution vo mm", with: @_doujinshi.date_parution_vo_mm
    fill_in "Image", with: @_doujinshi.image
    fill_in "Image vo", with: @_doujinshi.image_vo
    fill_in "Infos", with: @_doujinshi.infos
    fill_in "Lien achat", with: @_doujinshi.lien_achat
    fill_in "Nb page", with: @_doujinshi.nb_page
    fill_in "Numerique", with: @_doujinshi.numerique
    fill_in "Prix", with: @_doujinshi.prix
    fill_in "Resume", with: @_doujinshi.resume
    fill_in "Staff txt", with: @_doujinshi.staff_txt
    fill_in "Statut prop", with: @_doujinshi.statut_prop
    fill_in "Tags", with: @_doujinshi.tags
    fill_in "Titre", with: @_doujinshi.titre
    fill_in "Titre alternatif", with: @_doujinshi.titre_alternatif
    fill_in "Titre alternatif suite", with: @_doujinshi.titre_alternatif_suite
    fill_in "Titre original", with: @_doujinshi.titre_original
    fill_in "Titre original latin", with: @_doujinshi.titre_original_latin
    click_on "Create Doujinshi"

    assert_text "Doujinshi was successfully created"
    click_on "Back"
  end

  test "should update Doujinshi" do
    visit _doujinshi_url(@_doujinshi)
    click_on "Edit this doujinshi", match: :first

    fill_in "Doujinshis actualite", with: @_doujinshi._doujinshis_actualite_id
    fill_in "Doujinshis actualite mini", with: @_doujinshi._doujinshis_actualite_mini_id
    fill_in "Doujinshis am", with: @_doujinshi._doujinshis_am_id
    fill_in "Doujinshis am plus", with: @_doujinshi._doujinshis_am_plus_id
    fill_in "Doujinshis anime", with: @_doujinshi._doujinshis_anime_id
    fill_in "Doujinshis anime plus", with: @_doujinshi._doujinshis_anime_plus_id
    fill_in "Doujinshis artbook", with: @_doujinshi._doujinshis_artbook_id
    fill_in "Doujinshis censure", with: @_doujinshi._doujinshis_censure_id
    fill_in "Doujinshis conventions", with: @_doujinshi._doujinshis_conventions_id
    fill_in "Doujinshis culture", with: @_doujinshi._doujinshis_culture_id
    fill_in "Doujinshis doujinshi", with: @_doujinshi._doujinshis_doujinshi_id
    fill_in "Doujinshis doujinshi plus", with: @_doujinshi._doujinshis_doujinshi_plus_id
    fill_in "Doujinshis drama", with: @_doujinshi._doujinshis_drama_id
    fill_in "Doujinshis drama plus", with: @_doujinshi._doujinshis_drama_plus_id
    fill_in "Doujinshis france", with: @_doujinshi._doujinshis_france_id
    fill_in "Doujinshis genres averti", with: @_doujinshi._doujinshis_genres_averti_id
    fill_in "Doujinshis genres", with: @_doujinshi._doujinshis_genres_id
    fill_in "Doujinshis gratuit", with: @_doujinshi._doujinshis_gratuit_id
    fill_in "Doujinshis groupes", with: @_doujinshi._doujinshis_groupes_id
    fill_in "Doujinshis jv", with: @_doujinshi._doujinshis_jv_id
    fill_in "Doujinshis jv perso", with: @_doujinshi._doujinshis_jv_perso_id
    fill_in "Doujinshis jv plus", with: @_doujinshi._doujinshis_jv_plus_id
    fill_in "Doujinshis litterature asiatique", with: @_doujinshi._doujinshis_litterature_asiatique_id
    fill_in "Doujinshis litterature asiatique plus", with: @_doujinshi._doujinshis_litterature_asiatique_plus_id
    fill_in "Doujinshis ln", with: @_doujinshi._doujinshis_ln_id
    fill_in "Doujinshis ln plus", with: @_doujinshi._doujinshis_ln_plus_id
    fill_in "Doujinshis manga", with: @_doujinshi._doujinshis_manga_id
    fill_in "Doujinshis manga plus", with: @_doujinshi._doujinshis_manga_plus_id
    fill_in "Doujinshis origine", with: @_doujinshi._doujinshis_origine_id
    fill_in "Doujinshis pays", with: @_doujinshi._doujinshis_pays_id
    fill_in "Doujinshis people", with: @_doujinshi._doujinshis_people_id
    fill_in "Doujinshis perso", with: @_doujinshi._doujinshis_perso_id
    fill_in "Doujinshis perso manga", with: @_doujinshi._doujinshis_perso_manga_id
    fill_in "Doujinshis perso plus", with: @_doujinshi._doujinshis_perso_plus_id
    fill_in "Doujinshis public averti", with: @_doujinshi._doujinshis_public_averti_id
    fill_in "Doujinshis quizz", with: @_doujinshi._doujinshis_quizz_id
    fill_in "Doujinshis role", with: @_doujinshi._doujinshis_role_id
    fill_in "Doujinshis staff people", with: @_doujinshi._doujinshis_staff_people_id
    fill_in "Doujinshis themes", with: @_doujinshi._doujinshis_themes_id
    fill_in "Doujinshis type", with: @_doujinshi._doujinshis_type_id
    fill_in "Acceptregles", with: @_doujinshi.acceptregles
    fill_in "Comment", with: @_doujinshi.comment
    fill_in "Date parution vf aaaa", with: @_doujinshi.date_parution_vf_aaaa
    fill_in "Date parution vf jj", with: @_doujinshi.date_parution_vf_jj
    fill_in "Date parution vf mm", with: @_doujinshi.date_parution_vf_mm
    fill_in "Date parution vo aaaa", with: @_doujinshi.date_parution_vo_aaaa
    fill_in "Date parution vo jj", with: @_doujinshi.date_parution_vo_jj
    fill_in "Date parution vo mm", with: @_doujinshi.date_parution_vo_mm
    fill_in "Image", with: @_doujinshi.image
    fill_in "Image vo", with: @_doujinshi.image_vo
    fill_in "Infos", with: @_doujinshi.infos
    fill_in "Lien achat", with: @_doujinshi.lien_achat
    fill_in "Nb page", with: @_doujinshi.nb_page
    fill_in "Numerique", with: @_doujinshi.numerique
    fill_in "Prix", with: @_doujinshi.prix
    fill_in "Resume", with: @_doujinshi.resume
    fill_in "Staff txt", with: @_doujinshi.staff_txt
    fill_in "Statut prop", with: @_doujinshi.statut_prop
    fill_in "Tags", with: @_doujinshi.tags
    fill_in "Titre", with: @_doujinshi.titre
    fill_in "Titre alternatif", with: @_doujinshi.titre_alternatif
    fill_in "Titre alternatif suite", with: @_doujinshi.titre_alternatif_suite
    fill_in "Titre original", with: @_doujinshi.titre_original
    fill_in "Titre original latin", with: @_doujinshi.titre_original_latin
    click_on "Update Doujinshi"

    assert_text "Doujinshi was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujinshi" do
    visit _doujinshi_url(@_doujinshi)
    click_on "Destroy this doujinshi", match: :first

    assert_text "Doujinshi was successfully destroyed"
  end
end
