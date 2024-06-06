require "test_helper"

class LightNovelsPaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novels_pay = _light_novels_pays(:one)
  end

  test "should get index" do
    get _light_novels_pays_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novels_pay_url
    assert_response :success
  end

  test "should create _light_novels_pay" do
    assert_difference("LightNovelsPay.count") do
      post _light_novels_pays_url, params: { _light_novels_pay: { name: @_light_novels_pay.name } }
    end

    assert_redirected_to _light_novels_pay_url(LightNovelsPay.last)
  end

  test "should show _light_novels_pay" do
    get _light_novels_pay_url(@_light_novels_pay)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novels_pay_url(@_light_novels_pay)
    assert_response :success
  end

  test "should update _light_novels_pay" do
    patch _light_novels_pay_url(@_light_novels_pay), params: { _light_novels_pay: { name: @_light_novels_pay.name } }
    assert_redirected_to _light_novels_pay_url(@_light_novels_pay)
  end

  test "should destroy _light_novels_pay" do
    assert_difference("LightNovelsPay.count", -1) do
      delete _light_novels_pay_url(@_light_novels_pay)
    end

    assert_redirected_to _light_novels_pays_url
  end
end
