require "application_system_test_case"

class GoodiesTest < ApplicationSystemTestCase
  setup do
    @_goody = _goodies(:one)
  end

  test "visiting the index" do
    visit _goodies_url
    assert_selector "h1", text: "Goodies"
  end

  test "should create goody" do
    visit _goodies_url
    click_on "New goody"

    fill_in "Goodies actualite", with: @_goody._goodies_actualite_id
    fill_in "Goodies actualite mini", with: @_goody._goodies_actualite_mini_id
    fill_in "Goodies am", with: @_goody._goodies_am_id
    fill_in "Goodies anime", with: @_goody._goodies_anime_id
    fill_in "Goodies artbook", with: @_goody._goodies_artbook_id
    fill_in "Goodies bonus", with: @_goody._goodies_bonus_id
    fill_in "Goodies cd", with: @_goody._goodies_cd_id
    fill_in "Goodies clip", with: @_goody._goodies_clip_id
    fill_in "Goodies doujinshi", with: @_goody._goodies_doujinshi_id
    fill_in "Goodies drama", with: @_goody._goodies_drama_id
    fill_in "Goodies dvd", with: @_goody._goodies_dvd_id
    fill_in "Goodies editeurs vf", with: @_goody._goodies_editeurs_vf_id
    fill_in "Goodies editeurs vo", with: @_goody._goodies_editeurs_vo_id
    fill_in "Goodies goodies", with: @_goody._goodies_goodies_id
    fill_in "Goodies groupes", with: @_goody._goodies_groupes_id
    fill_in "Goodies jv", with: @_goody._goodies_jv_id
    fill_in "Goodies jv perso", with: @_goody._goodies_jv_perso_id
    fill_in "Goodies litterature asiatique", with: @_goody._goodies_litterature_asiatique_id
    fill_in "Goodies ln", with: @_goody._goodies_ln_id
    fill_in "Goodies manga", with: @_goody._goodies_manga_id
    fill_in "Goodies matiere", with: @_goody._goodies_matiere_id
    fill_in "Goodies ost", with: @_goody._goodies_ost_id
    fill_in "Goodies pays", with: @_goody._goodies_pays_id
    fill_in "Goodies people", with: @_goody._goodies_people_id
    fill_in "Goodies perso", with: @_goody._goodies_perso_id
    fill_in "Goodies perso manga", with: @_goody._goodies_perso_manga_id
    fill_in "Goodies photobook", with: @_goody._goodies_photobook_id
    fill_in "Goodies public averti", with: @_goody._goodies_public_averti_id
    fill_in "Goodies societe people", with: @_goody._goodies_societe_people_id
    fill_in "Goodies societe role", with: @_goody._goodies_societe_role_id
    fill_in "Goodies staff people", with: @_goody._goodies_staff_people_id
    fill_in "Goodies staff role", with: @_goody._goodies_staff_role_id
    fill_in "Goodies type", with: @_goody._goodies_type_id
    fill_in "Acceptregles", with: @_goody.acceptregles
    fill_in "Articule", with: @_goody.articule
    fill_in "Comment", with: @_goody.comment
    fill_in "Commerce", with: @_goody.commerce
    fill_in "Date parution vf aaaa", with: @_goody.date_parution_vf_aaaa
    fill_in "Date parution vf jj", with: @_goody.date_parution_vf_jj
    fill_in "Date parution vf mm", with: @_goody.date_parution_vf_mm
    fill_in "Date parution vo aaaa", with: @_goody.date_parution_vo_aaaa
    fill_in "Date parution vo jj", with: @_goody.date_parution_vo_jj
    fill_in "Date parution vo mm", with: @_goody.date_parution_vo_mm
    fill_in "Date reedition aaaa", with: @_goody.date_reedition_aaaa
    fill_in "Date reedition jj", with: @_goody.date_reedition_jj
    fill_in "Date reedition mm", with: @_goody.date_reedition_mm
    fill_in "Dimensions h", with: @_goody.dimensions_h
    fill_in "Dimensions w", with: @_goody.dimensions_w
    fill_in "Dimensions z", with: @_goody.dimensions_z
    fill_in "Ean", with: @_goody.ean
    fill_in "Echelle", with: @_goody.echelle
    fill_in "Image", with: @_goody.image
    fill_in "Image vo", with: @_goody.image_vo
    fill_in "Infos", with: @_goody.infos
    fill_in "Poids", with: @_goody.poids
    fill_in "Prix", with: @_goody.prix
    fill_in "Ref", with: @_goody.ref
    fill_in "Resume", with: @_goody.resume
    fill_in "Sculpteur", with: @_goody.sculpteur
    fill_in "Site", with: @_goody.site
    fill_in "Statut prop", with: @_goody.statut_prop
    fill_in "Titre", with: @_goody.titre
    fill_in "Titre alternatif", with: @_goody.titre_alternatif
    fill_in "Titre original", with: @_goody.titre_original
    fill_in "Titre original latin", with: @_goody.titre_original_latin
    fill_in "Youtube", with: @_goody.youtube
    click_on "Create Goody"

    assert_text "Goody was successfully created"
    click_on "Back"
  end

  test "should update Goody" do
    visit _goody_url(@_goody)
    click_on "Edit this goody", match: :first

    fill_in "Goodies actualite", with: @_goody._goodies_actualite_id
    fill_in "Goodies actualite mini", with: @_goody._goodies_actualite_mini_id
    fill_in "Goodies am", with: @_goody._goodies_am_id
    fill_in "Goodies anime", with: @_goody._goodies_anime_id
    fill_in "Goodies artbook", with: @_goody._goodies_artbook_id
    fill_in "Goodies bonus", with: @_goody._goodies_bonus_id
    fill_in "Goodies cd", with: @_goody._goodies_cd_id
    fill_in "Goodies clip", with: @_goody._goodies_clip_id
    fill_in "Goodies doujinshi", with: @_goody._goodies_doujinshi_id
    fill_in "Goodies drama", with: @_goody._goodies_drama_id
    fill_in "Goodies dvd", with: @_goody._goodies_dvd_id
    fill_in "Goodies editeurs vf", with: @_goody._goodies_editeurs_vf_id
    fill_in "Goodies editeurs vo", with: @_goody._goodies_editeurs_vo_id
    fill_in "Goodies goodies", with: @_goody._goodies_goodies_id
    fill_in "Goodies groupes", with: @_goody._goodies_groupes_id
    fill_in "Goodies jv", with: @_goody._goodies_jv_id
    fill_in "Goodies jv perso", with: @_goody._goodies_jv_perso_id
    fill_in "Goodies litterature asiatique", with: @_goody._goodies_litterature_asiatique_id
    fill_in "Goodies ln", with: @_goody._goodies_ln_id
    fill_in "Goodies manga", with: @_goody._goodies_manga_id
    fill_in "Goodies matiere", with: @_goody._goodies_matiere_id
    fill_in "Goodies ost", with: @_goody._goodies_ost_id
    fill_in "Goodies pays", with: @_goody._goodies_pays_id
    fill_in "Goodies people", with: @_goody._goodies_people_id
    fill_in "Goodies perso", with: @_goody._goodies_perso_id
    fill_in "Goodies perso manga", with: @_goody._goodies_perso_manga_id
    fill_in "Goodies photobook", with: @_goody._goodies_photobook_id
    fill_in "Goodies public averti", with: @_goody._goodies_public_averti_id
    fill_in "Goodies societe people", with: @_goody._goodies_societe_people_id
    fill_in "Goodies societe role", with: @_goody._goodies_societe_role_id
    fill_in "Goodies staff people", with: @_goody._goodies_staff_people_id
    fill_in "Goodies staff role", with: @_goody._goodies_staff_role_id
    fill_in "Goodies type", with: @_goody._goodies_type_id
    fill_in "Acceptregles", with: @_goody.acceptregles
    fill_in "Articule", with: @_goody.articule
    fill_in "Comment", with: @_goody.comment
    fill_in "Commerce", with: @_goody.commerce
    fill_in "Date parution vf aaaa", with: @_goody.date_parution_vf_aaaa
    fill_in "Date parution vf jj", with: @_goody.date_parution_vf_jj
    fill_in "Date parution vf mm", with: @_goody.date_parution_vf_mm
    fill_in "Date parution vo aaaa", with: @_goody.date_parution_vo_aaaa
    fill_in "Date parution vo jj", with: @_goody.date_parution_vo_jj
    fill_in "Date parution vo mm", with: @_goody.date_parution_vo_mm
    fill_in "Date reedition aaaa", with: @_goody.date_reedition_aaaa
    fill_in "Date reedition jj", with: @_goody.date_reedition_jj
    fill_in "Date reedition mm", with: @_goody.date_reedition_mm
    fill_in "Dimensions h", with: @_goody.dimensions_h
    fill_in "Dimensions w", with: @_goody.dimensions_w
    fill_in "Dimensions z", with: @_goody.dimensions_z
    fill_in "Ean", with: @_goody.ean
    fill_in "Echelle", with: @_goody.echelle
    fill_in "Image", with: @_goody.image
    fill_in "Image vo", with: @_goody.image_vo
    fill_in "Infos", with: @_goody.infos
    fill_in "Poids", with: @_goody.poids
    fill_in "Prix", with: @_goody.prix
    fill_in "Ref", with: @_goody.ref
    fill_in "Resume", with: @_goody.resume
    fill_in "Sculpteur", with: @_goody.sculpteur
    fill_in "Site", with: @_goody.site
    fill_in "Statut prop", with: @_goody.statut_prop
    fill_in "Titre", with: @_goody.titre
    fill_in "Titre alternatif", with: @_goody.titre_alternatif
    fill_in "Titre original", with: @_goody.titre_original
    fill_in "Titre original latin", with: @_goody.titre_original_latin
    fill_in "Youtube", with: @_goody.youtube
    click_on "Update Goody"

    assert_text "Goody was successfully updated"
    click_on "Back"
  end

  test "should destroy Goody" do
    visit _goody_url(@_goody)
    click_on "Destroy this goody", match: :first

    assert_text "Goody was successfully destroyed"
  end
end
