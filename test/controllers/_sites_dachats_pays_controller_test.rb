require "test_helper"

class SitesDachatsPaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_sites_dachats_pay = _sites_dachats_pays(:one)
  end

  test "should get index" do
    get _sites_dachats_pays_url
    assert_response :success
  end

  test "should get new" do
    get new__sites_dachats_pay_url
    assert_response :success
  end

  test "should create _sites_dachats_pay" do
    assert_difference("SitesDachatsPay.count") do
      post _sites_dachats_pays_url, params: { _sites_dachats_pay: { name: @_sites_dachats_pay.name } }
    end

    assert_redirected_to _sites_dachats_pay_url(SitesDachatsPay.last)
  end

  test "should show _sites_dachats_pay" do
    get _sites_dachats_pay_url(@_sites_dachats_pay)
    assert_response :success
  end

  test "should get edit" do
    get edit__sites_dachats_pay_url(@_sites_dachats_pay)
    assert_response :success
  end

  test "should update _sites_dachats_pay" do
    patch _sites_dachats_pay_url(@_sites_dachats_pay), params: { _sites_dachats_pay: { name: @_sites_dachats_pay.name } }
    assert_redirected_to _sites_dachats_pay_url(@_sites_dachats_pay)
  end

  test "should destroy _sites_dachats_pay" do
    assert_difference("SitesDachatsPay.count", -1) do
      delete _sites_dachats_pay_url(@_sites_dachats_pay)
    end

    assert_redirected_to _sites_dachats_pays_url
  end
end
