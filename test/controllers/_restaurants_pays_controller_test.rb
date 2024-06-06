require "test_helper"

class RestaurantsPaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_restaurants_pay = _restaurants_pays(:one)
  end

  test "should get index" do
    get _restaurants_pays_url
    assert_response :success
  end

  test "should get new" do
    get new__restaurants_pay_url
    assert_response :success
  end

  test "should create _restaurants_pay" do
    assert_difference("RestaurantsPay.count") do
      post _restaurants_pays_url, params: { _restaurants_pay: { name: @_restaurants_pay.name } }
    end

    assert_redirected_to _restaurants_pay_url(RestaurantsPay.last)
  end

  test "should show _restaurants_pay" do
    get _restaurants_pay_url(@_restaurants_pay)
    assert_response :success
  end

  test "should get edit" do
    get edit__restaurants_pay_url(@_restaurants_pay)
    assert_response :success
  end

  test "should update _restaurants_pay" do
    patch _restaurants_pay_url(@_restaurants_pay), params: { _restaurants_pay: { name: @_restaurants_pay.name } }
    assert_redirected_to _restaurants_pay_url(@_restaurants_pay)
  end

  test "should destroy _restaurants_pay" do
    assert_difference("RestaurantsPay.count", -1) do
      delete _restaurants_pay_url(@_restaurants_pay)
    end

    assert_redirected_to _restaurants_pays_url
  end
end
