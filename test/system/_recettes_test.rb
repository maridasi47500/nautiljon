require "application_system_test_case"

class RecettesTest < ApplicationSystemTestCase
  setup do
    @_recette = _recettes(:one)
  end

  test "visiting the index" do
    visit _recettes_url
    assert_selector "h1", text: "Recettes"
  end

  test "should create recette" do
    visit _recettes_url
    click_on "New recette"

    fill_in "Recettes difficulte", with: @_recette._recettes_difficulte_id
    fill_in "Recettes plat", with: @_recette._recettes_plat_id
    fill_in "Recettes type", with: @_recette._recettes_type_id
    fill_in "Acceptregles", with: @_recette.acceptregles
    fill_in "Comment", with: @_recette.comment
    fill_in "Cuisson", with: @_recette.cuisson
    fill_in "Image", with: @_recette.image
    fill_in "Ingredients", with: @_recette.ingredients
    fill_in "Nb pers", with: @_recette.nb_pers
    fill_in "Nom", with: @_recette.nom
    fill_in "Preparation", with: @_recette.preparation
    fill_in "Source", with: @_recette.source
    fill_in "Texte", with: @_recette.texte
    click_on "Create Recette"

    assert_text "Recette was successfully created"
    click_on "Back"
  end

  test "should update Recette" do
    visit _recette_url(@_recette)
    click_on "Edit this recette", match: :first

    fill_in "Recettes difficulte", with: @_recette._recettes_difficulte_id
    fill_in "Recettes plat", with: @_recette._recettes_plat_id
    fill_in "Recettes type", with: @_recette._recettes_type_id
    fill_in "Acceptregles", with: @_recette.acceptregles
    fill_in "Comment", with: @_recette.comment
    fill_in "Cuisson", with: @_recette.cuisson
    fill_in "Image", with: @_recette.image
    fill_in "Ingredients", with: @_recette.ingredients
    fill_in "Nb pers", with: @_recette.nb_pers
    fill_in "Nom", with: @_recette.nom
    fill_in "Preparation", with: @_recette.preparation
    fill_in "Source", with: @_recette.source
    fill_in "Texte", with: @_recette.texte
    click_on "Update Recette"

    assert_text "Recette was successfully updated"
    click_on "Back"
  end

  test "should destroy Recette" do
    visit _recette_url(@_recette)
    click_on "Destroy this recette", match: :first

    assert_text "Recette was successfully destroyed"
  end
end
