require "test_helper"

class Dvd::BluRaysActualiteMinisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dvd___blu_rays_actualite_mini = _dvd___blu_rays_actualite_minis(:one)
  end

  test "should get index" do
    get _dvd___blu_rays_actualite_minis_url
    assert_response :success
  end

  test "should get new" do
    get new__dvd___blu_rays_actualite_mini_url
    assert_response :success
  end

  test "should create _dvd___blu_rays_actualite_mini" do
    assert_difference("Dvd::BluRaysActualiteMini.count") do
      post _dvd___blu_rays_actualite_minis_url, params: { _dvd___blu_rays_actualite_mini: { name: @_dvd___blu_rays_actualite_mini.name } }
    end

    assert_redirected_to _dvd___blu_rays_actualite_mini_url(Dvd::BluRaysActualiteMini.last)
  end

  test "should show _dvd___blu_rays_actualite_mini" do
    get _dvd___blu_rays_actualite_mini_url(@_dvd___blu_rays_actualite_mini)
    assert_response :success
  end

  test "should get edit" do
    get edit__dvd___blu_rays_actualite_mini_url(@_dvd___blu_rays_actualite_mini)
    assert_response :success
  end

  test "should update _dvd___blu_rays_actualite_mini" do
    patch _dvd___blu_rays_actualite_mini_url(@_dvd___blu_rays_actualite_mini), params: { _dvd___blu_rays_actualite_mini: { name: @_dvd___blu_rays_actualite_mini.name } }
    assert_redirected_to _dvd___blu_rays_actualite_mini_url(@_dvd___blu_rays_actualite_mini)
  end

  test "should destroy _dvd___blu_rays_actualite_mini" do
    assert_difference("Dvd::BluRaysActualiteMini.count", -1) do
      delete _dvd___blu_rays_actualite_mini_url(@_dvd___blu_rays_actualite_mini)
    end

    assert_redirected_to _dvd___blu_rays_actualite_minis_url
  end
end
