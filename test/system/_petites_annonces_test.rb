require "application_system_test_case"

class PetitesAnnoncesTest < ApplicationSystemTestCase
  setup do
    @_petites_annonce = _petites_annonces(:one)
  end

  test "visiting the index" do
    visit _petites_annonces_url
    assert_selector "h1", text: "Petites annonces"
  end

  test "should create petites annonce" do
    visit _petites_annonces_url
    click_on "New petites annonce"

    fill_in "Petites annonces lieu", with: @_petites_annonce._petites_annonces_lieu_id
    fill_in "Petites annonces pays", with: @_petites_annonce._petites_annonces_pays_id
    fill_in "Petites annonces section", with: @_petites_annonce._petites_annonces_section_id
    fill_in "Acceptregles", with: @_petites_annonce.acceptregles
    fill_in "Comment", with: @_petites_annonce.comment
    fill_in "Description", with: @_petites_annonce.description
    fill_in "Etat produit", with: @_petites_annonce.etat_produit
    fill_in "Image", with: @_petites_annonce.image
    fill_in "Prix", with: @_petites_annonce.prix
    fill_in "Statut", with: @_petites_annonce.statut
    fill_in "Titre", with: @_petites_annonce.titre
    fill_in "Type", with: @_petites_annonce.type
    click_on "Create Petites annonce"

    assert_text "Petites annonce was successfully created"
    click_on "Back"
  end

  test "should update Petites annonce" do
    visit _petites_annonce_url(@_petites_annonce)
    click_on "Edit this petites annonce", match: :first

    fill_in "Petites annonces lieu", with: @_petites_annonce._petites_annonces_lieu_id
    fill_in "Petites annonces pays", with: @_petites_annonce._petites_annonces_pays_id
    fill_in "Petites annonces section", with: @_petites_annonce._petites_annonces_section_id
    fill_in "Acceptregles", with: @_petites_annonce.acceptregles
    fill_in "Comment", with: @_petites_annonce.comment
    fill_in "Description", with: @_petites_annonce.description
    fill_in "Etat produit", with: @_petites_annonce.etat_produit
    fill_in "Image", with: @_petites_annonce.image
    fill_in "Prix", with: @_petites_annonce.prix
    fill_in "Statut", with: @_petites_annonce.statut
    fill_in "Titre", with: @_petites_annonce.titre
    fill_in "Type", with: @_petites_annonce.type
    click_on "Update Petites annonce"

    assert_text "Petites annonce was successfully updated"
    click_on "Back"
  end

  test "should destroy Petites annonce" do
    visit _petites_annonce_url(@_petites_annonce)
    click_on "Destroy this petites annonce", match: :first

    assert_text "Petites annonce was successfully destroyed"
  end
end
