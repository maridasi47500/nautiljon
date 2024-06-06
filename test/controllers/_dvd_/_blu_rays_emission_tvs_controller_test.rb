require "test_helper"

class Dvd::BluRaysEmissionTvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dvd___blu_rays_emission_tv = _dvd___blu_rays_emission_tvs(:one)
  end

  test "should get index" do
    get _dvd___blu_rays_emission_tvs_url
    assert_response :success
  end

  test "should get new" do
    get new__dvd___blu_rays_emission_tv_url
    assert_response :success
  end

  test "should create _dvd___blu_rays_emission_tv" do
    assert_difference("Dvd::BluRaysEmissionTv.count") do
      post _dvd___blu_rays_emission_tvs_url, params: { _dvd___blu_rays_emission_tv: { name: @_dvd___blu_rays_emission_tv.name } }
    end

    assert_redirected_to _dvd___blu_rays_emission_tv_url(Dvd::BluRaysEmissionTv.last)
  end

  test "should show _dvd___blu_rays_emission_tv" do
    get _dvd___blu_rays_emission_tv_url(@_dvd___blu_rays_emission_tv)
    assert_response :success
  end

  test "should get edit" do
    get edit__dvd___blu_rays_emission_tv_url(@_dvd___blu_rays_emission_tv)
    assert_response :success
  end

  test "should update _dvd___blu_rays_emission_tv" do
    patch _dvd___blu_rays_emission_tv_url(@_dvd___blu_rays_emission_tv), params: { _dvd___blu_rays_emission_tv: { name: @_dvd___blu_rays_emission_tv.name } }
    assert_redirected_to _dvd___blu_rays_emission_tv_url(@_dvd___blu_rays_emission_tv)
  end

  test "should destroy _dvd___blu_rays_emission_tv" do
    assert_difference("Dvd::BluRaysEmissionTv.count", -1) do
      delete _dvd___blu_rays_emission_tv_url(@_dvd___blu_rays_emission_tv)
    end

    assert_redirected_to _dvd___blu_rays_emission_tvs_url
  end
end
