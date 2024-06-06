require "test_helper"

class CdsDistributeursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_cds_distributeur = _cds_distributeurs(:one)
  end

  test "should get index" do
    get _cds_distributeurs_url
    assert_response :success
  end

  test "should get new" do
    get new__cds_distributeur_url
    assert_response :success
  end

  test "should create _cds_distributeur" do
    assert_difference("CdsDistributeur.count") do
      post _cds_distributeurs_url, params: { _cds_distributeur: { name: @_cds_distributeur.name } }
    end

    assert_redirected_to _cds_distributeur_url(CdsDistributeur.last)
  end

  test "should show _cds_distributeur" do
    get _cds_distributeur_url(@_cds_distributeur)
    assert_response :success
  end

  test "should get edit" do
    get edit__cds_distributeur_url(@_cds_distributeur)
    assert_response :success
  end

  test "should update _cds_distributeur" do
    patch _cds_distributeur_url(@_cds_distributeur), params: { _cds_distributeur: { name: @_cds_distributeur.name } }
    assert_redirected_to _cds_distributeur_url(@_cds_distributeur)
  end

  test "should destroy _cds_distributeur" do
    assert_difference("CdsDistributeur.count", -1) do
      delete _cds_distributeur_url(@_cds_distributeur)
    end

    assert_redirected_to _cds_distributeurs_url
  end
end
