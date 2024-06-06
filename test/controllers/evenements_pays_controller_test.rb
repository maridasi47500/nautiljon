require "test_helper"

class EvenementsPaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evenements_pay = evenements_pays(:one)
  end

  test "should get index" do
    get evenements_pays_url
    assert_response :success
  end

  test "should get new" do
    get new_evenements_pay_url
    assert_response :success
  end

  test "should create evenements_pay" do
    assert_difference("EvenementsPay.count") do
      post evenements_pays_url, params: { evenements_pay: { name: @evenements_pay.name } }
    end

    assert_redirected_to evenements_pay_url(EvenementsPay.last)
  end

  test "should show evenements_pay" do
    get evenements_pay_url(@evenements_pay)
    assert_response :success
  end

  test "should get edit" do
    get edit_evenements_pay_url(@evenements_pay)
    assert_response :success
  end

  test "should update evenements_pay" do
    patch evenements_pay_url(@evenements_pay), params: { evenements_pay: { name: @evenements_pay.name } }
    assert_redirected_to evenements_pay_url(@evenements_pay)
  end

  test "should destroy evenements_pay" do
    assert_difference("EvenementsPay.count", -1) do
      delete evenements_pay_url(@evenements_pay)
    end

    assert_redirected_to evenements_pays_url
  end
end
