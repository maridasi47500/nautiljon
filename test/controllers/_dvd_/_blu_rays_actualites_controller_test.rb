require "test_helper"

class Dvd::BluRaysActualitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dvd___blu_rays_actualite = _dvd___blu_rays_actualites(:one)
  end

  test "should get index" do
    get _dvd___blu_rays_actualites_url
    assert_response :success
  end

  test "should get new" do
    get new__dvd___blu_rays_actualite_url
    assert_response :success
  end

  test "should create _dvd___blu_rays_actualite" do
    assert_difference("Dvd::BluRaysActualite.count") do
      post _dvd___blu_rays_actualites_url, params: { _dvd___blu_rays_actualite: { name: @_dvd___blu_rays_actualite.name } }
    end

    assert_redirected_to _dvd___blu_rays_actualite_url(Dvd::BluRaysActualite.last)
  end

  test "should show _dvd___blu_rays_actualite" do
    get _dvd___blu_rays_actualite_url(@_dvd___blu_rays_actualite)
    assert_response :success
  end

  test "should get edit" do
    get edit__dvd___blu_rays_actualite_url(@_dvd___blu_rays_actualite)
    assert_response :success
  end

  test "should update _dvd___blu_rays_actualite" do
    patch _dvd___blu_rays_actualite_url(@_dvd___blu_rays_actualite), params: { _dvd___blu_rays_actualite: { name: @_dvd___blu_rays_actualite.name } }
    assert_redirected_to _dvd___blu_rays_actualite_url(@_dvd___blu_rays_actualite)
  end

  test "should destroy _dvd___blu_rays_actualite" do
    assert_difference("Dvd::BluRaysActualite.count", -1) do
      delete _dvd___blu_rays_actualite_url(@_dvd___blu_rays_actualite)
    end

    assert_redirected_to _dvd___blu_rays_actualites_url
  end
end
