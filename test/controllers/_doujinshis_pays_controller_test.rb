require "test_helper"

class DoujinshisPaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_pay = _doujinshis_pays(:one)
  end

  test "should get index" do
    get _doujinshis_pays_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_pay_url
    assert_response :success
  end

  test "should create _doujinshis_pay" do
    assert_difference("DoujinshisPay.count") do
      post _doujinshis_pays_url, params: { _doujinshis_pay: { name: @_doujinshis_pay.name } }
    end

    assert_redirected_to _doujinshis_pay_url(DoujinshisPay.last)
  end

  test "should show _doujinshis_pay" do
    get _doujinshis_pay_url(@_doujinshis_pay)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_pay_url(@_doujinshis_pay)
    assert_response :success
  end

  test "should update _doujinshis_pay" do
    patch _doujinshis_pay_url(@_doujinshis_pay), params: { _doujinshis_pay: { name: @_doujinshis_pay.name } }
    assert_redirected_to _doujinshis_pay_url(@_doujinshis_pay)
  end

  test "should destroy _doujinshis_pay" do
    assert_difference("DoujinshisPay.count", -1) do
      delete _doujinshis_pay_url(@_doujinshis_pay)
    end

    assert_redirected_to _doujinshis_pays_url
  end
end
