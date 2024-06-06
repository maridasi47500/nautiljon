require "test_helper"

class BoutiquesPaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_boutiques_pay = _boutiques_pays(:one)
  end

  test "should get index" do
    get _boutiques_pays_url
    assert_response :success
  end

  test "should get new" do
    get new__boutiques_pay_url
    assert_response :success
  end

  test "should create _boutiques_pay" do
    assert_difference("BoutiquesPay.count") do
      post _boutiques_pays_url, params: { _boutiques_pay: { name: @_boutiques_pay.name } }
    end

    assert_redirected_to _boutiques_pay_url(BoutiquesPay.last)
  end

  test "should show _boutiques_pay" do
    get _boutiques_pay_url(@_boutiques_pay)
    assert_response :success
  end

  test "should get edit" do
    get edit__boutiques_pay_url(@_boutiques_pay)
    assert_response :success
  end

  test "should update _boutiques_pay" do
    patch _boutiques_pay_url(@_boutiques_pay), params: { _boutiques_pay: { name: @_boutiques_pay.name } }
    assert_redirected_to _boutiques_pay_url(@_boutiques_pay)
  end

  test "should destroy _boutiques_pay" do
    assert_difference("BoutiquesPay.count", -1) do
      delete _boutiques_pay_url(@_boutiques_pay)
    end

    assert_redirected_to _boutiques_pays_url
  end
end
