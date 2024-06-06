require "test_helper"

class Dvd::BluRaysAmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dvd___blu_rays_am = _dvd___blu_rays_ams(:one)
  end

  test "should get index" do
    get _dvd___blu_rays_ams_url
    assert_response :success
  end

  test "should get new" do
    get new__dvd___blu_rays_am_url
    assert_response :success
  end

  test "should create _dvd___blu_rays_am" do
    assert_difference("Dvd::BluRaysAm.count") do
      post _dvd___blu_rays_ams_url, params: { _dvd___blu_rays_am: { name: @_dvd___blu_rays_am.name } }
    end

    assert_redirected_to _dvd___blu_rays_am_url(Dvd::BluRaysAm.last)
  end

  test "should show _dvd___blu_rays_am" do
    get _dvd___blu_rays_am_url(@_dvd___blu_rays_am)
    assert_response :success
  end

  test "should get edit" do
    get edit__dvd___blu_rays_am_url(@_dvd___blu_rays_am)
    assert_response :success
  end

  test "should update _dvd___blu_rays_am" do
    patch _dvd___blu_rays_am_url(@_dvd___blu_rays_am), params: { _dvd___blu_rays_am: { name: @_dvd___blu_rays_am.name } }
    assert_redirected_to _dvd___blu_rays_am_url(@_dvd___blu_rays_am)
  end

  test "should destroy _dvd___blu_rays_am" do
    assert_difference("Dvd::BluRaysAm.count", -1) do
      delete _dvd___blu_rays_am_url(@_dvd___blu_rays_am)
    end

    assert_redirected_to _dvd___blu_rays_ams_url
  end
end
