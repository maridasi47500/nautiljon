require "application_system_test_case"

class DoujinsTest < ApplicationSystemTestCase
  setup do
    @_doujin = _doujins(:one)
  end

  test "visiting the index" do
    visit _doujins_url
    assert_selector "h1", text: "Doujins"
  end

  test "should create doujin" do
    visit _doujins_url
    click_on "New doujin"

    fill_in "Doujins am", with: @_doujin._doujins_am_id
    fill_in "Doujins anime", with: @_doujin._doujins_anime_id
    fill_in "Doujins artbook", with: @_doujin._doujins_artbook_id
    fill_in "Doujins conventions", with: @_doujin._doujins_conventions_id
    fill_in "Doujins doujin", with: @_doujin._doujins_doujin_id
    fill_in "Doujins drama", with: @_doujin._doujins_drama_id
    fill_in "Doujins genres", with: @_doujin._doujins_genres_id
    fill_in "Doujins groupes", with: @_doujin._doujins_groupes_id
    fill_in "Doujins jv", with: @_doujin._doujins_jv_id
    fill_in "Doujins ln", with: @_doujin._doujins_ln_id
    fill_in "Doujins people", with: @_doujin._doujins_people_id
    fill_in "Doujins role", with: @_doujin._doujins_role_id
    fill_in "Acceptregles", with: @_doujin.acceptregles
    fill_in "Cercle", with: @_doujin.cercle
    fill_in "Comment", with: @_doujin.comment
    fill_in "Date aaaa", with: @_doujin.date_aaaa
    fill_in "Date jj", with: @_doujin.date_jj
    fill_in "Date mm", with: @_doujin.date_mm
    fill_in "Image", with: @_doujin.image
    fill_in "Infos", with: @_doujin.infos
    fill_in "Ref", with: @_doujin.ref
    fill_in "Statut prop", with: @_doujin.statut_prop
    fill_in "Titre", with: @_doujin.titre
    fill_in "Titre alternatif", with: @_doujin.titre_alternatif
    fill_in "Titre original", with: @_doujin.titre_original
    fill_in "Titre original latin", with: @_doujin.titre_original_latin
    click_on "Create Doujin"

    assert_text "Doujin was successfully created"
    click_on "Back"
  end

  test "should update Doujin" do
    visit _doujin_url(@_doujin)
    click_on "Edit this doujin", match: :first

    fill_in "Doujins am", with: @_doujin._doujins_am_id
    fill_in "Doujins anime", with: @_doujin._doujins_anime_id
    fill_in "Doujins artbook", with: @_doujin._doujins_artbook_id
    fill_in "Doujins conventions", with: @_doujin._doujins_conventions_id
    fill_in "Doujins doujin", with: @_doujin._doujins_doujin_id
    fill_in "Doujins drama", with: @_doujin._doujins_drama_id
    fill_in "Doujins genres", with: @_doujin._doujins_genres_id
    fill_in "Doujins groupes", with: @_doujin._doujins_groupes_id
    fill_in "Doujins jv", with: @_doujin._doujins_jv_id
    fill_in "Doujins ln", with: @_doujin._doujins_ln_id
    fill_in "Doujins people", with: @_doujin._doujins_people_id
    fill_in "Doujins role", with: @_doujin._doujins_role_id
    fill_in "Acceptregles", with: @_doujin.acceptregles
    fill_in "Cercle", with: @_doujin.cercle
    fill_in "Comment", with: @_doujin.comment
    fill_in "Date aaaa", with: @_doujin.date_aaaa
    fill_in "Date jj", with: @_doujin.date_jj
    fill_in "Date mm", with: @_doujin.date_mm
    fill_in "Image", with: @_doujin.image
    fill_in "Infos", with: @_doujin.infos
    fill_in "Ref", with: @_doujin.ref
    fill_in "Statut prop", with: @_doujin.statut_prop
    fill_in "Titre", with: @_doujin.titre
    fill_in "Titre alternatif", with: @_doujin.titre_alternatif
    fill_in "Titre original", with: @_doujin.titre_original
    fill_in "Titre original latin", with: @_doujin.titre_original_latin
    click_on "Update Doujin"

    assert_text "Doujin was successfully updated"
    click_on "Back"
  end

  test "should destroy Doujin" do
    visit _doujin_url(@_doujin)
    click_on "Destroy this doujin", match: :first

    assert_text "Doujin was successfully destroyed"
  end
end
