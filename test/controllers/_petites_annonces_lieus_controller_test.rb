require "test_helper"

class PetitesAnnoncesLieusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_petites_annonces_lieu = _petites_annonces_lieus(:one)
  end

  test "should get index" do
    get _petites_annonces_lieus_url
    assert_response :success
  end

  test "should get new" do
    get new__petites_annonces_lieu_url
    assert_response :success
  end

  test "should create _petites_annonces_lieu" do
    assert_difference("PetitesAnnoncesLieu.count") do
      post _petites_annonces_lieus_url, params: { _petites_annonces_lieu: { name: @_petites_annonces_lieu.name } }
    end

    assert_redirected_to _petites_annonces_lieu_url(PetitesAnnoncesLieu.last)
  end

  test "should show _petites_annonces_lieu" do
    get _petites_annonces_lieu_url(@_petites_annonces_lieu)
    assert_response :success
  end

  test "should get edit" do
    get edit__petites_annonces_lieu_url(@_petites_annonces_lieu)
    assert_response :success
  end

  test "should update _petites_annonces_lieu" do
    patch _petites_annonces_lieu_url(@_petites_annonces_lieu), params: { _petites_annonces_lieu: { name: @_petites_annonces_lieu.name } }
    assert_redirected_to _petites_annonces_lieu_url(@_petites_annonces_lieu)
  end

  test "should destroy _petites_annonces_lieu" do
    assert_difference("PetitesAnnoncesLieu.count", -1) do
      delete _petites_annonces_lieu_url(@_petites_annonces_lieu)
    end

    assert_redirected_to _petites_annonces_lieus_url
  end
end
