require "test_helper"

class Dvd::BluRaysFrancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dvd___blu_rays_france = _dvd___blu_rays_frances(:one)
  end

  test "should get index" do
    get _dvd___blu_rays_frances_url
    assert_response :success
  end

  test "should get new" do
    get new__dvd___blu_rays_france_url
    assert_response :success
  end

  test "should create _dvd___blu_rays_france" do
    assert_difference("Dvd::BluRaysFrance.count") do
      post _dvd___blu_rays_frances_url, params: { _dvd___blu_rays_france: { name: @_dvd___blu_rays_france.name } }
    end

    assert_redirected_to _dvd___blu_rays_france_url(Dvd::BluRaysFrance.last)
  end

  test "should show _dvd___blu_rays_france" do
    get _dvd___blu_rays_france_url(@_dvd___blu_rays_france)
    assert_response :success
  end

  test "should get edit" do
    get edit__dvd___blu_rays_france_url(@_dvd___blu_rays_france)
    assert_response :success
  end

  test "should update _dvd___blu_rays_france" do
    patch _dvd___blu_rays_france_url(@_dvd___blu_rays_france), params: { _dvd___blu_rays_france: { name: @_dvd___blu_rays_france.name } }
    assert_redirected_to _dvd___blu_rays_france_url(@_dvd___blu_rays_france)
  end

  test "should destroy _dvd___blu_rays_france" do
    assert_difference("Dvd::BluRaysFrance.count", -1) do
      delete _dvd___blu_rays_france_url(@_dvd___blu_rays_france)
    end

    assert_redirected_to _dvd___blu_rays_frances_url
  end
end
