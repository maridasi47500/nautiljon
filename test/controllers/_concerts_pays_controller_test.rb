require "test_helper"

class ConcertsPaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_concerts_pay = _concerts_pays(:one)
  end

  test "should get index" do
    get _concerts_pays_url
    assert_response :success
  end

  test "should get new" do
    get new__concerts_pay_url
    assert_response :success
  end

  test "should create _concerts_pay" do
    assert_difference("ConcertsPay.count") do
      post _concerts_pays_url, params: { _concerts_pay: { name: @_concerts_pay.name } }
    end

    assert_redirected_to _concerts_pay_url(ConcertsPay.last)
  end

  test "should show _concerts_pay" do
    get _concerts_pay_url(@_concerts_pay)
    assert_response :success
  end

  test "should get edit" do
    get edit__concerts_pay_url(@_concerts_pay)
    assert_response :success
  end

  test "should update _concerts_pay" do
    patch _concerts_pay_url(@_concerts_pay), params: { _concerts_pay: { name: @_concerts_pay.name } }
    assert_redirected_to _concerts_pay_url(@_concerts_pay)
  end

  test "should destroy _concerts_pay" do
    assert_difference("ConcertsPay.count", -1) do
      delete _concerts_pay_url(@_concerts_pay)
    end

    assert_redirected_to _concerts_pays_url
  end
end
