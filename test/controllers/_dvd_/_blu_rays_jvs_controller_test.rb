require "test_helper"

class Dvd::BluRaysJvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dvd___blu_rays_jv = _dvd___blu_rays_jvs(:one)
  end

  test "should get index" do
    get _dvd___blu_rays_jvs_url
    assert_response :success
  end

  test "should get new" do
    get new__dvd___blu_rays_jv_url
    assert_response :success
  end

  test "should create _dvd___blu_rays_jv" do
    assert_difference("Dvd::BluRaysJv.count") do
      post _dvd___blu_rays_jvs_url, params: { _dvd___blu_rays_jv: { name: @_dvd___blu_rays_jv.name } }
    end

    assert_redirected_to _dvd___blu_rays_jv_url(Dvd::BluRaysJv.last)
  end

  test "should show _dvd___blu_rays_jv" do
    get _dvd___blu_rays_jv_url(@_dvd___blu_rays_jv)
    assert_response :success
  end

  test "should get edit" do
    get edit__dvd___blu_rays_jv_url(@_dvd___blu_rays_jv)
    assert_response :success
  end

  test "should update _dvd___blu_rays_jv" do
    patch _dvd___blu_rays_jv_url(@_dvd___blu_rays_jv), params: { _dvd___blu_rays_jv: { name: @_dvd___blu_rays_jv.name } }
    assert_redirected_to _dvd___blu_rays_jv_url(@_dvd___blu_rays_jv)
  end

  test "should destroy _dvd___blu_rays_jv" do
    assert_difference("Dvd::BluRaysJv.count", -1) do
      delete _dvd___blu_rays_jv_url(@_dvd___blu_rays_jv)
    end

    assert_redirected_to _dvd___blu_rays_jvs_url
  end
end
