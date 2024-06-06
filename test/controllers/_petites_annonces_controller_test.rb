require "test_helper"

class PetitesAnnoncesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_petites_annonce = _petites_annonces(:one)
  end

  test "should get index" do
    get _petites_annonces_url
    assert_response :success
  end

  test "should get new" do
    get new__petites_annonce_url
    assert_response :success
  end

  test "should create _petites_annonce" do
    assert_difference("PetitesAnnonce.count") do
      post _petites_annonces_url, params: { _petites_annonce: { _petites_annonces_lieu_id: @_petites_annonce._petites_annonces_lieu_id, _petites_annonces_pays_id: @_petites_annonce._petites_annonces_pays_id, _petites_annonces_section_id: @_petites_annonce._petites_annonces_section_id, acceptregles: @_petites_annonce.acceptregles, comment: @_petites_annonce.comment, description: @_petites_annonce.description, etat_produit: @_petites_annonce.etat_produit, image: @_petites_annonce.image, prix: @_petites_annonce.prix, statut: @_petites_annonce.statut, titre: @_petites_annonce.titre, type: @_petites_annonce.type } }
    end

    assert_redirected_to _petites_annonce_url(PetitesAnnonce.last)
  end

  test "should show _petites_annonce" do
    get _petites_annonce_url(@_petites_annonce)
    assert_response :success
  end

  test "should get edit" do
    get edit__petites_annonce_url(@_petites_annonce)
    assert_response :success
  end

  test "should update _petites_annonce" do
    patch _petites_annonce_url(@_petites_annonce), params: { _petites_annonce: { _petites_annonces_lieu_id: @_petites_annonce._petites_annonces_lieu_id, _petites_annonces_pays_id: @_petites_annonce._petites_annonces_pays_id, _petites_annonces_section_id: @_petites_annonce._petites_annonces_section_id, acceptregles: @_petites_annonce.acceptregles, comment: @_petites_annonce.comment, description: @_petites_annonce.description, etat_produit: @_petites_annonce.etat_produit, image: @_petites_annonce.image, prix: @_petites_annonce.prix, statut: @_petites_annonce.statut, titre: @_petites_annonce.titre, type: @_petites_annonce.type } }
    assert_redirected_to _petites_annonce_url(@_petites_annonce)
  end

  test "should destroy _petites_annonce" do
    assert_difference("PetitesAnnonce.count", -1) do
      delete _petites_annonce_url(@_petites_annonce)
    end

    assert_redirected_to _petites_annonces_url
  end
end
