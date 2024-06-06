require "test_helper"

class GoodiesPaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_pay = _goodies_pays(:one)
  end

  test "should get index" do
    get _goodies_pays_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_pay_url
    assert_response :success
  end

  test "should create _goodies_pay" do
    assert_difference("GoodiesPay.count") do
      post _goodies_pays_url, params: { _goodies_pay: { name: @_goodies_pay.name } }
    end

    assert_redirected_to _goodies_pay_url(GoodiesPay.last)
  end

  test "should show _goodies_pay" do
    get _goodies_pay_url(@_goodies_pay)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_pay_url(@_goodies_pay)
    assert_response :success
  end

  test "should update _goodies_pay" do
    patch _goodies_pay_url(@_goodies_pay), params: { _goodies_pay: { name: @_goodies_pay.name } }
    assert_redirected_to _goodies_pay_url(@_goodies_pay)
  end

  test "should destroy _goodies_pay" do
    assert_difference("GoodiesPay.count", -1) do
      delete _goodies_pay_url(@_goodies_pay)
    end

    assert_redirected_to _goodies_pays_url
  end
end
