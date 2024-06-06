require "test_helper"

class EvènementsPaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evènements_pay = evènements_pays(:one)
  end

  test "should get index" do
    get evènements_pays_url
    assert_response :success
  end

  test "should get new" do
    get new_evènements_pay_url
    assert_response :success
  end

  test "should create evènements_pay" do
    assert_difference("EvènementsPay.count") do
      post evènements_pays_url, params: { evènements_pay: { name: @evènements_pay.name } }
    end

    assert_redirected_to evènements_pay_url(EvènementsPay.last)
  end

  test "should show evènements_pay" do
    get evènements_pay_url(@evènements_pay)
    assert_response :success
  end

  test "should get edit" do
    get edit_evènements_pay_url(@evènements_pay)
    assert_response :success
  end

  test "should update evènements_pay" do
    patch evènements_pay_url(@evènements_pay), params: { evènements_pay: { name: @evènements_pay.name } }
    assert_redirected_to evènements_pay_url(@evènements_pay)
  end

  test "should destroy evènements_pay" do
    assert_difference("EvènementsPay.count", -1) do
      delete evènements_pay_url(@evènements_pay)
    end

    assert_redirected_to evènements_pays_url
  end
end
