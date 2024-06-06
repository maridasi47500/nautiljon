require "test_helper"

class Dvd::BluRaysPaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dvd___blu_rays_pay = _dvd___blu_rays_pays(:one)
  end

  test "should get index" do
    get _dvd___blu_rays_pays_url
    assert_response :success
  end

  test "should get new" do
    get new__dvd___blu_rays_pay_url
    assert_response :success
  end

  test "should create _dvd___blu_rays_pay" do
    assert_difference("Dvd::BluRaysPay.count") do
      post _dvd___blu_rays_pays_url, params: { _dvd___blu_rays_pay: { name: @_dvd___blu_rays_pay.name } }
    end

    assert_redirected_to _dvd___blu_rays_pay_url(Dvd::BluRaysPay.last)
  end

  test "should show _dvd___blu_rays_pay" do
    get _dvd___blu_rays_pay_url(@_dvd___blu_rays_pay)
    assert_response :success
  end

  test "should get edit" do
    get edit__dvd___blu_rays_pay_url(@_dvd___blu_rays_pay)
    assert_response :success
  end

  test "should update _dvd___blu_rays_pay" do
    patch _dvd___blu_rays_pay_url(@_dvd___blu_rays_pay), params: { _dvd___blu_rays_pay: { name: @_dvd___blu_rays_pay.name } }
    assert_redirected_to _dvd___blu_rays_pay_url(@_dvd___blu_rays_pay)
  end

  test "should destroy _dvd___blu_rays_pay" do
    assert_difference("Dvd::BluRaysPay.count", -1) do
      delete _dvd___blu_rays_pay_url(@_dvd___blu_rays_pay)
    end

    assert_redirected_to _dvd___blu_rays_pays_url
  end
end
