require "test_helper"

class BoutiquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_boutique = _boutiques(:one)
  end

  test "should get index" do
    get _boutiques_url
    assert_response :success
  end

  test "should get new" do
    get new__boutique_url
    assert_response :success
  end

  test "should create _boutique" do
    assert_difference("Boutique.count") do
      post _boutiques_url, params: { _boutique: { _boutiques_pays_id: @_boutique._boutiques_pays_id, acceptregles: @_boutique.acceptregles, adresse: @_boutique.adresse, dept: @_boutique.dept, description: @_boutique.description, image: @_boutique.image, nom: @_boutique.nom, site: @_boutique.site, tel: @_boutique.tel, ville: @_boutique.ville } }
    end

    assert_redirected_to _boutique_url(Boutique.last)
  end

  test "should show _boutique" do
    get _boutique_url(@_boutique)
    assert_response :success
  end

  test "should get edit" do
    get edit__boutique_url(@_boutique)
    assert_response :success
  end

  test "should update _boutique" do
    patch _boutique_url(@_boutique), params: { _boutique: { _boutiques_pays_id: @_boutique._boutiques_pays_id, acceptregles: @_boutique.acceptregles, adresse: @_boutique.adresse, dept: @_boutique.dept, description: @_boutique.description, image: @_boutique.image, nom: @_boutique.nom, site: @_boutique.site, tel: @_boutique.tel, ville: @_boutique.ville } }
    assert_redirected_to _boutique_url(@_boutique)
  end

  test "should destroy _boutique" do
    assert_difference("Boutique.count", -1) do
      delete _boutique_url(@_boutique)
    end

    assert_redirected_to _boutiques_url
  end
end
