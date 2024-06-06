require "test_helper"

class LivresPaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_pay = _livres_pays(:one)
  end

  test "should get index" do
    get _livres_pays_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_pay_url
    assert_response :success
  end

  test "should create _livres_pay" do
    assert_difference("LivresPay.count") do
      post _livres_pays_url, params: { _livres_pay: { name: @_livres_pay.name } }
    end

    assert_redirected_to _livres_pay_url(LivresPay.last)
  end

  test "should show _livres_pay" do
    get _livres_pay_url(@_livres_pay)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_pay_url(@_livres_pay)
    assert_response :success
  end

  test "should update _livres_pay" do
    patch _livres_pay_url(@_livres_pay), params: { _livres_pay: { name: @_livres_pay.name } }
    assert_redirected_to _livres_pay_url(@_livres_pay)
  end

  test "should destroy _livres_pay" do
    assert_difference("LivresPay.count", -1) do
      delete _livres_pay_url(@_livres_pay)
    end

    assert_redirected_to _livres_pays_url
  end
end
