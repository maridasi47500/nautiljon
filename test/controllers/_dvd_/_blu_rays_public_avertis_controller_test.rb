require "test_helper"

class Dvd::BluRaysPublicAvertisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dvd___blu_rays_public_averti = _dvd___blu_rays_public_avertis(:one)
  end

  test "should get index" do
    get _dvd___blu_rays_public_avertis_url
    assert_response :success
  end

  test "should get new" do
    get new__dvd___blu_rays_public_averti_url
    assert_response :success
  end

  test "should create _dvd___blu_rays_public_averti" do
    assert_difference("Dvd::BluRaysPublicAverti.count") do
      post _dvd___blu_rays_public_avertis_url, params: { _dvd___blu_rays_public_averti: { name: @_dvd___blu_rays_public_averti.name } }
    end

    assert_redirected_to _dvd___blu_rays_public_averti_url(Dvd::BluRaysPublicAverti.last)
  end

  test "should show _dvd___blu_rays_public_averti" do
    get _dvd___blu_rays_public_averti_url(@_dvd___blu_rays_public_averti)
    assert_response :success
  end

  test "should get edit" do
    get edit__dvd___blu_rays_public_averti_url(@_dvd___blu_rays_public_averti)
    assert_response :success
  end

  test "should update _dvd___blu_rays_public_averti" do
    patch _dvd___blu_rays_public_averti_url(@_dvd___blu_rays_public_averti), params: { _dvd___blu_rays_public_averti: { name: @_dvd___blu_rays_public_averti.name } }
    assert_redirected_to _dvd___blu_rays_public_averti_url(@_dvd___blu_rays_public_averti)
  end

  test "should destroy _dvd___blu_rays_public_averti" do
    assert_difference("Dvd::BluRaysPublicAverti.count", -1) do
      delete _dvd___blu_rays_public_averti_url(@_dvd___blu_rays_public_averti)
    end

    assert_redirected_to _dvd___blu_rays_public_avertis_url
  end
end
