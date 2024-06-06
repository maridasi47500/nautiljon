require "application_system_test_case"

class ArtbooksTest < ApplicationSystemTestCase
  setup do
    @artbook = artbooks(:one)
  end

  test "visiting the index" do
    visit artbooks_url
    assert_selector "h1", text: "Artbooks"
  end

  test "should create artbook" do
    visit artbooks_url
    click_on "New artbook"

    fill_in "Acceptregles", with: @artbook.acceptregles
    fill_in "Artbooks actualite", with: @artbook.artbooks_actualite_id
    fill_in "Artbooks actualite mini", with: @artbook.artbooks_actualite_mini_id
    fill_in "Artbooks am", with: @artbook.artbooks_am_id
    fill_in "Artbooks anime", with: @artbook.artbooks_anime_id
    fill_in "Artbooks artbook", with: @artbook.artbooks_artbook_id
    fill_in "Artbooks culture", with: @artbook.artbooks_culture_id
    fill_in "Artbooks doujin", with: @artbook.artbooks_doujin_id
    fill_in "Artbooks doujinshi", with: @artbook.artbooks_doujinshi_id
    fill_in "Artbooks drama", with: @artbook.artbooks_drama_id
    fill_in "Artbooks editeurs vf", with: @artbook.artbooks_editeurs_vf_id
    fill_in "Artbooks editeurs vo", with: @artbook.artbooks_editeurs_vo_id
    fill_in "Artbooks france", with: @artbook.artbooks_france_id
    fill_in "Artbooks goodies", with: @artbook.artbooks_goodies_id
    fill_in "Artbooks groupes", with: @artbook.artbooks_groupes_id
    fill_in "Artbooks illustrations", with: @artbook.artbooks_illustrations_id
    fill_in "Artbooks jv", with: @artbook.artbooks_jv_id
    fill_in "Artbooks litterature asiatique", with: @artbook.artbooks_litterature_asiatique_id
    fill_in "Artbooks ln", with: @artbook.artbooks_ln_id
    fill_in "Artbooks manga", with: @artbook.artbooks_manga_id
    fill_in "Artbooks pays", with: @artbook.artbooks_pays_id
    fill_in "Artbooks people", with: @artbook.artbooks_people_id
    fill_in "Artbooks public averti", with: @artbook.artbooks_public_averti_id
    fill_in "Artbooks role", with: @artbook.artbooks_role_id
    fill_in "Artbooks societe people", with: @artbook.artbooks_societe_people_id
    fill_in "Artbooks societe role", with: @artbook.artbooks_societe_role_id
    fill_in "Artbooks type", with: @artbook.artbooks_type_id
    fill_in "Comment", with: @artbook.comment
    fill_in "Crossover", with: @artbook.crossover
    fill_in "Date parution vf aaaa", with: @artbook.date_parution_vf_aaaa
    fill_in "Date parution vf jj", with: @artbook.date_parution_vf_jj
    fill_in "Date parution vf mm", with: @artbook.date_parution_vf_mm
    fill_in "Date parution vo aaaa", with: @artbook.date_parution_vo_aaaa
    fill_in "Date parution vo jj", with: @artbook.date_parution_vo_jj
    fill_in "Date parution vo mm", with: @artbook.date_parution_vo_mm
    fill_in "Ean", with: @artbook.ean
    fill_in "Image", with: @artbook.image
    fill_in "Image vo", with: @artbook.image_vo
    fill_in "Infos", with: @artbook.infos
    fill_in "Nb pages", with: @artbook.nb_pages
    fill_in "Prix", with: @artbook.prix
    fill_in "Resume", with: @artbook.resume
    fill_in "Statut prop", with: @artbook.statut_prop
    fill_in "Titre", with: @artbook.titre
    fill_in "Titre alternatif", with: @artbook.titre_alternatif
    fill_in "Titre original", with: @artbook.titre_original
    fill_in "Titre original latin", with: @artbook.titre_original_latin
    click_on "Create Artbook"

    assert_text "Artbook was successfully created"
    click_on "Back"
  end

  test "should update Artbook" do
    visit artbook_url(@artbook)
    click_on "Edit this artbook", match: :first

    fill_in "Acceptregles", with: @artbook.acceptregles
    fill_in "Artbooks actualite", with: @artbook.artbooks_actualite_id
    fill_in "Artbooks actualite mini", with: @artbook.artbooks_actualite_mini_id
    fill_in "Artbooks am", with: @artbook.artbooks_am_id
    fill_in "Artbooks anime", with: @artbook.artbooks_anime_id
    fill_in "Artbooks artbook", with: @artbook.artbooks_artbook_id
    fill_in "Artbooks culture", with: @artbook.artbooks_culture_id
    fill_in "Artbooks doujin", with: @artbook.artbooks_doujin_id
    fill_in "Artbooks doujinshi", with: @artbook.artbooks_doujinshi_id
    fill_in "Artbooks drama", with: @artbook.artbooks_drama_id
    fill_in "Artbooks editeurs vf", with: @artbook.artbooks_editeurs_vf_id
    fill_in "Artbooks editeurs vo", with: @artbook.artbooks_editeurs_vo_id
    fill_in "Artbooks france", with: @artbook.artbooks_france_id
    fill_in "Artbooks goodies", with: @artbook.artbooks_goodies_id
    fill_in "Artbooks groupes", with: @artbook.artbooks_groupes_id
    fill_in "Artbooks illustrations", with: @artbook.artbooks_illustrations_id
    fill_in "Artbooks jv", with: @artbook.artbooks_jv_id
    fill_in "Artbooks litterature asiatique", with: @artbook.artbooks_litterature_asiatique_id
    fill_in "Artbooks ln", with: @artbook.artbooks_ln_id
    fill_in "Artbooks manga", with: @artbook.artbooks_manga_id
    fill_in "Artbooks pays", with: @artbook.artbooks_pays_id
    fill_in "Artbooks people", with: @artbook.artbooks_people_id
    fill_in "Artbooks public averti", with: @artbook.artbooks_public_averti_id
    fill_in "Artbooks role", with: @artbook.artbooks_role_id
    fill_in "Artbooks societe people", with: @artbook.artbooks_societe_people_id
    fill_in "Artbooks societe role", with: @artbook.artbooks_societe_role_id
    fill_in "Artbooks type", with: @artbook.artbooks_type_id
    fill_in "Comment", with: @artbook.comment
    fill_in "Crossover", with: @artbook.crossover
    fill_in "Date parution vf aaaa", with: @artbook.date_parution_vf_aaaa
    fill_in "Date parution vf jj", with: @artbook.date_parution_vf_jj
    fill_in "Date parution vf mm", with: @artbook.date_parution_vf_mm
    fill_in "Date parution vo aaaa", with: @artbook.date_parution_vo_aaaa
    fill_in "Date parution vo jj", with: @artbook.date_parution_vo_jj
    fill_in "Date parution vo mm", with: @artbook.date_parution_vo_mm
    fill_in "Ean", with: @artbook.ean
    fill_in "Image", with: @artbook.image
    fill_in "Image vo", with: @artbook.image_vo
    fill_in "Infos", with: @artbook.infos
    fill_in "Nb pages", with: @artbook.nb_pages
    fill_in "Prix", with: @artbook.prix
    fill_in "Resume", with: @artbook.resume
    fill_in "Statut prop", with: @artbook.statut_prop
    fill_in "Titre", with: @artbook.titre
    fill_in "Titre alternatif", with: @artbook.titre_alternatif
    fill_in "Titre original", with: @artbook.titre_original
    fill_in "Titre original latin", with: @artbook.titre_original_latin
    click_on "Update Artbook"

    assert_text "Artbook was successfully updated"
    click_on "Back"
  end

  test "should destroy Artbook" do
    visit artbook_url(@artbook)
    click_on "Destroy this artbook", match: :first

    assert_text "Artbook was successfully destroyed"
  end
end
