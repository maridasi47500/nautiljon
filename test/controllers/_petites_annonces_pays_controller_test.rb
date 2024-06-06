require "test_helper"

class PetitesAnnoncesPaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_petites_annonces_pay = _petites_annonces_pays(:one)
  end

  test "should get index" do
    get _petites_annonces_pays_url
    assert_response :success
  end

  test "should get new" do
    get new__petites_annonces_pay_url
    assert_response :success
  end

  test "should create _petites_annonces_pay" do
    assert_difference("PetitesAnnoncesPay.count") do
      post _petites_annonces_pays_url, params: { _petites_annonces_pay: { name: @_petites_annonces_pay.name } }
    end

    assert_redirected_to _petites_annonces_pay_url(PetitesAnnoncesPay.last)
  end

  test "should show _petites_annonces_pay" do
    get _petites_annonces_pay_url(@_petites_annonces_pay)
    assert_response :success
  end

  test "should get edit" do
    get edit__petites_annonces_pay_url(@_petites_annonces_pay)
    assert_response :success
  end

  test "should update _petites_annonces_pay" do
    patch _petites_annonces_pay_url(@_petites_annonces_pay), params: { _petites_annonces_pay: { name: @_petites_annonces_pay.name } }
    assert_redirected_to _petites_annonces_pay_url(@_petites_annonces_pay)
  end

  test "should destroy _petites_annonces_pay" do
    assert_difference("PetitesAnnoncesPay.count", -1) do
      delete _petites_annonces_pay_url(@_petites_annonces_pay)
    end

    assert_redirected_to _petites_annonces_pays_url
  end
end
