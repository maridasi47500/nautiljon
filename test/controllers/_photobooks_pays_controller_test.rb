require "test_helper"

class PhotobooksPaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_photobooks_pay = _photobooks_pays(:one)
  end

  test "should get index" do
    get _photobooks_pays_url
    assert_response :success
  end

  test "should get new" do
    get new__photobooks_pay_url
    assert_response :success
  end

  test "should create _photobooks_pay" do
    assert_difference("PhotobooksPay.count") do
      post _photobooks_pays_url, params: { _photobooks_pay: { name: @_photobooks_pay.name } }
    end

    assert_redirected_to _photobooks_pay_url(PhotobooksPay.last)
  end

  test "should show _photobooks_pay" do
    get _photobooks_pay_url(@_photobooks_pay)
    assert_response :success
  end

  test "should get edit" do
    get edit__photobooks_pay_url(@_photobooks_pay)
    assert_response :success
  end

  test "should update _photobooks_pay" do
    patch _photobooks_pay_url(@_photobooks_pay), params: { _photobooks_pay: { name: @_photobooks_pay.name } }
    assert_redirected_to _photobooks_pay_url(@_photobooks_pay)
  end

  test "should destroy _photobooks_pay" do
    assert_difference("PhotobooksPay.count", -1) do
      delete _photobooks_pay_url(@_photobooks_pay)
    end

    assert_redirected_to _photobooks_pays_url
  end
end
