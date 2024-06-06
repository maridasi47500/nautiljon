require "test_helper"

class PersonnalitesPaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnalites_pay = _personnalites_pays(:one)
  end

  test "should get index" do
    get _personnalites_pays_url
    assert_response :success
  end

  test "should get new" do
    get new__personnalites_pay_url
    assert_response :success
  end

  test "should create _personnalites_pay" do
    assert_difference("PersonnalitesPay.count") do
      post _personnalites_pays_url, params: { _personnalites_pay: { name: @_personnalites_pay.name } }
    end

    assert_redirected_to _personnalites_pay_url(PersonnalitesPay.last)
  end

  test "should show _personnalites_pay" do
    get _personnalites_pay_url(@_personnalites_pay)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnalites_pay_url(@_personnalites_pay)
    assert_response :success
  end

  test "should update _personnalites_pay" do
    patch _personnalites_pay_url(@_personnalites_pay), params: { _personnalites_pay: { name: @_personnalites_pay.name } }
    assert_redirected_to _personnalites_pay_url(@_personnalites_pay)
  end

  test "should destroy _personnalites_pay" do
    assert_difference("PersonnalitesPay.count", -1) do
      delete _personnalites_pay_url(@_personnalites_pay)
    end

    assert_redirected_to _personnalites_pays_url
  end
end
