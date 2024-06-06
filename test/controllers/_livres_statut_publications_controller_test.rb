require "test_helper"

class LivresStatutPublicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_statut_publication = _livres_statut_publications(:one)
  end

  test "should get index" do
    get _livres_statut_publications_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_statut_publication_url
    assert_response :success
  end

  test "should create _livres_statut_publication" do
    assert_difference("LivresStatutPublication.count") do
      post _livres_statut_publications_url, params: { _livres_statut_publication: { name: @_livres_statut_publication.name } }
    end

    assert_redirected_to _livres_statut_publication_url(LivresStatutPublication.last)
  end

  test "should show _livres_statut_publication" do
    get _livres_statut_publication_url(@_livres_statut_publication)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_statut_publication_url(@_livres_statut_publication)
    assert_response :success
  end

  test "should update _livres_statut_publication" do
    patch _livres_statut_publication_url(@_livres_statut_publication), params: { _livres_statut_publication: { name: @_livres_statut_publication.name } }
    assert_redirected_to _livres_statut_publication_url(@_livres_statut_publication)
  end

  test "should destroy _livres_statut_publication" do
    assert_difference("LivresStatutPublication.count", -1) do
      delete _livres_statut_publication_url(@_livres_statut_publication)
    end

    assert_redirected_to _livres_statut_publications_url
  end
end
