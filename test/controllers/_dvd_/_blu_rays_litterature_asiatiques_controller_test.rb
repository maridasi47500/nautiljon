require "test_helper"

class Dvd::BluRaysLitteratureAsiatiquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dvd___blu_rays_litterature_asiatique = _dvd___blu_rays_litterature_asiatiques(:one)
  end

  test "should get index" do
    get _dvd___blu_rays_litterature_asiatiques_url
    assert_response :success
  end

  test "should get new" do
    get new__dvd___blu_rays_litterature_asiatique_url
    assert_response :success
  end

  test "should create _dvd___blu_rays_litterature_asiatique" do
    assert_difference("Dvd::BluRaysLitteratureAsiatique.count") do
      post _dvd___blu_rays_litterature_asiatiques_url, params: { _dvd___blu_rays_litterature_asiatique: { name: @_dvd___blu_rays_litterature_asiatique.name } }
    end

    assert_redirected_to _dvd___blu_rays_litterature_asiatique_url(Dvd::BluRaysLitteratureAsiatique.last)
  end

  test "should show _dvd___blu_rays_litterature_asiatique" do
    get _dvd___blu_rays_litterature_asiatique_url(@_dvd___blu_rays_litterature_asiatique)
    assert_response :success
  end

  test "should get edit" do
    get edit__dvd___blu_rays_litterature_asiatique_url(@_dvd___blu_rays_litterature_asiatique)
    assert_response :success
  end

  test "should update _dvd___blu_rays_litterature_asiatique" do
    patch _dvd___blu_rays_litterature_asiatique_url(@_dvd___blu_rays_litterature_asiatique), params: { _dvd___blu_rays_litterature_asiatique: { name: @_dvd___blu_rays_litterature_asiatique.name } }
    assert_redirected_to _dvd___blu_rays_litterature_asiatique_url(@_dvd___blu_rays_litterature_asiatique)
  end

  test "should destroy _dvd___blu_rays_litterature_asiatique" do
    assert_difference("Dvd::BluRaysLitteratureAsiatique.count", -1) do
      delete _dvd___blu_rays_litterature_asiatique_url(@_dvd___blu_rays_litterature_asiatique)
    end

    assert_redirected_to _dvd___blu_rays_litterature_asiatiques_url
  end
end
