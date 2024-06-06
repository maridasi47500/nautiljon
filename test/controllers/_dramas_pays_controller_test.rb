require "test_helper"

class DramasPaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_pay = _dramas_pays(:one)
  end

  test "should get index" do
    get _dramas_pays_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_pay_url
    assert_response :success
  end

  test "should create _dramas_pay" do
    assert_difference("DramasPay.count") do
      post _dramas_pays_url, params: { _dramas_pay: { name: @_dramas_pay.name } }
    end

    assert_redirected_to _dramas_pay_url(DramasPay.last)
  end

  test "should show _dramas_pay" do
    get _dramas_pay_url(@_dramas_pay)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_pay_url(@_dramas_pay)
    assert_response :success
  end

  test "should update _dramas_pay" do
    patch _dramas_pay_url(@_dramas_pay), params: { _dramas_pay: { name: @_dramas_pay.name } }
    assert_redirected_to _dramas_pay_url(@_dramas_pay)
  end

  test "should destroy _dramas_pay" do
    assert_difference("DramasPay.count", -1) do
      delete _dramas_pay_url(@_dramas_pay)
    end

    assert_redirected_to _dramas_pays_url
  end
end
