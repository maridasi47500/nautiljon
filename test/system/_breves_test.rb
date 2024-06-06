require "application_system_test_case"

class BrevesTest < ApplicationSystemTestCase
  setup do
    @_brefe = _breves(:one)
  end

  test "visiting the index" do
    visit _breves_url
    assert_selector "h1", text: "Breves"
  end

  test "should create brefe" do
    visit _breves_url
    click_on "New brefe"

    fill_in "Breves actualite", with: @_brefe._breves_actualite_id
    fill_in "Breves actualite mini", with: @_brefe._breves_actualite_mini_id
    fill_in "Breves am", with: @_brefe._breves_am_id
    fill_in "Breves amv", with: @_brefe._breves_amv_id
    fill_in "Breves anime", with: @_brefe._breves_anime_id
    fill_in "Breves anime studio", with: @_brefe._breves_anime_studio_id
    fill_in "Breves artbook", with: @_brefe._breves_artbook_id
    fill_in "Breves beau livre", with: @_brefe._breves_beau_livre_id
    fill_in "Breves cat", with: @_brefe._breves_cat_id
    fill_in "Breves cd", with: @_brefe._breves_cd_id
    fill_in "Breves cinema", with: @_brefe._breves_cinema_id
    fill_in "Breves clip", with: @_brefe._breves_clip_id
    fill_in "Breves concerts", with: @_brefe._breves_concerts_id
    fill_in "Breves concours", with: @_brefe._breves_concours_id
    fill_in "Breves culture", with: @_brefe._breves_culture_id
    fill_in "Breves drama", with: @_brefe._breves_drama_id
    fill_in "Breves dvd", with: @_brefe._breves_dvd_id
    fill_in "Breves emission tv", with: @_brefe._breves_emission_tv_id
    fill_in "Breves emission tv numero", with: @_brefe._breves_emission_tv_numero_id
    fill_in "Breves evenement", with: @_brefe._breves_evenement_id
    fill_in "Breves goodies", with: @_brefe._breves_goodies_id
    fill_in "Breves jv", with: @_brefe._breves_jv_id
    fill_in "Breves jv societe", with: @_brefe._breves_jv_societe_id
    fill_in "Breves litterature asiatique", with: @_brefe._breves_litterature_asiatique_id
    fill_in "Breves livre jeunesse", with: @_brefe._breves_livre_jeunesse_id
    fill_in "Breves ln", with: @_brefe._breves_ln_id
    fill_in "Breves magazine", with: @_brefe._breves_magazine_id
    fill_in "Breves manga editeur", with: @_brefe._breves_manga_editeur_id
    fill_in "Breves manga", with: @_brefe._breves_manga_id
    fill_in "Breves ost", with: @_brefe._breves_ost_id
    fill_in "Breves people", with: @_brefe._breves_people_id
    fill_in "Breves photobook", with: @_brefe._breves_photobook_id
    fill_in "Breves quizz", with: @_brefe._breves_quizz_id
    fill_in "Breves recette", with: @_brefe._breves_recette_id
    fill_in "Breves societe", with: @_brefe._breves_societe_id
    fill_in "Breves sondage", with: @_brefe._breves_sondage_id
    fill_in "Acceptregles", with: @_brefe.acceptregles
    fill_in "Comment", with: @_brefe.comment
    fill_in "Image", with: @_brefe.image
    fill_in "Source", with: @_brefe.source
    fill_in "Source2", with: @_brefe.source2
    fill_in "Source2 url", with: @_brefe.source2_url
    fill_in "Source3", with: @_brefe.source3
    fill_in "Source3 url", with: @_brefe.source3_url
    fill_in "Source url", with: @_brefe.source_url
    fill_in "Statut prop", with: @_brefe.statut_prop
    fill_in "Tags", with: @_brefe.tags
    fill_in "Texte", with: @_brefe.texte
    fill_in "Titre", with: @_brefe.titre
    click_on "Create Brefe"

    assert_text "Brefe was successfully created"
    click_on "Back"
  end

  test "should update Brefe" do
    visit _brefe_url(@_brefe)
    click_on "Edit this brefe", match: :first

    fill_in "Breves actualite", with: @_brefe._breves_actualite_id
    fill_in "Breves actualite mini", with: @_brefe._breves_actualite_mini_id
    fill_in "Breves am", with: @_brefe._breves_am_id
    fill_in "Breves amv", with: @_brefe._breves_amv_id
    fill_in "Breves anime", with: @_brefe._breves_anime_id
    fill_in "Breves anime studio", with: @_brefe._breves_anime_studio_id
    fill_in "Breves artbook", with: @_brefe._breves_artbook_id
    fill_in "Breves beau livre", with: @_brefe._breves_beau_livre_id
    fill_in "Breves cat", with: @_brefe._breves_cat_id
    fill_in "Breves cd", with: @_brefe._breves_cd_id
    fill_in "Breves cinema", with: @_brefe._breves_cinema_id
    fill_in "Breves clip", with: @_brefe._breves_clip_id
    fill_in "Breves concerts", with: @_brefe._breves_concerts_id
    fill_in "Breves concours", with: @_brefe._breves_concours_id
    fill_in "Breves culture", with: @_brefe._breves_culture_id
    fill_in "Breves drama", with: @_brefe._breves_drama_id
    fill_in "Breves dvd", with: @_brefe._breves_dvd_id
    fill_in "Breves emission tv", with: @_brefe._breves_emission_tv_id
    fill_in "Breves emission tv numero", with: @_brefe._breves_emission_tv_numero_id
    fill_in "Breves evenement", with: @_brefe._breves_evenement_id
    fill_in "Breves goodies", with: @_brefe._breves_goodies_id
    fill_in "Breves jv", with: @_brefe._breves_jv_id
    fill_in "Breves jv societe", with: @_brefe._breves_jv_societe_id
    fill_in "Breves litterature asiatique", with: @_brefe._breves_litterature_asiatique_id
    fill_in "Breves livre jeunesse", with: @_brefe._breves_livre_jeunesse_id
    fill_in "Breves ln", with: @_brefe._breves_ln_id
    fill_in "Breves magazine", with: @_brefe._breves_magazine_id
    fill_in "Breves manga editeur", with: @_brefe._breves_manga_editeur_id
    fill_in "Breves manga", with: @_brefe._breves_manga_id
    fill_in "Breves ost", with: @_brefe._breves_ost_id
    fill_in "Breves people", with: @_brefe._breves_people_id
    fill_in "Breves photobook", with: @_brefe._breves_photobook_id
    fill_in "Breves quizz", with: @_brefe._breves_quizz_id
    fill_in "Breves recette", with: @_brefe._breves_recette_id
    fill_in "Breves societe", with: @_brefe._breves_societe_id
    fill_in "Breves sondage", with: @_brefe._breves_sondage_id
    fill_in "Acceptregles", with: @_brefe.acceptregles
    fill_in "Comment", with: @_brefe.comment
    fill_in "Image", with: @_brefe.image
    fill_in "Source", with: @_brefe.source
    fill_in "Source2", with: @_brefe.source2
    fill_in "Source2 url", with: @_brefe.source2_url
    fill_in "Source3", with: @_brefe.source3
    fill_in "Source3 url", with: @_brefe.source3_url
    fill_in "Source url", with: @_brefe.source_url
    fill_in "Statut prop", with: @_brefe.statut_prop
    fill_in "Tags", with: @_brefe.tags
    fill_in "Texte", with: @_brefe.texte
    fill_in "Titre", with: @_brefe.titre
    click_on "Update Brefe"

    assert_text "Brefe was successfully updated"
    click_on "Back"
  end

  test "should destroy Brefe" do
    visit _brefe_url(@_brefe)
    click_on "Destroy this brefe", match: :first

    assert_text "Brefe was successfully destroyed"
  end
end
