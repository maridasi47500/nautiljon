require "test_helper"

class Dvd::BluRaysEditeursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dvd___blu_rays_editeur = _dvd___blu_rays_editeurs(:one)
  end

  test "should get index" do
    get _dvd___blu_rays_editeurs_url
    assert_response :success
  end

  test "should get new" do
    get new__dvd___blu_rays_editeur_url
    assert_response :success
  end

  test "should create _dvd___blu_rays_editeur" do
    assert_difference("Dvd::BluRaysEditeur.count") do
      post _dvd___blu_rays_editeurs_url, params: { _dvd___blu_rays_editeur: { name: @_dvd___blu_rays_editeur.name } }
    end

    assert_redirected_to _dvd___blu_rays_editeur_url(Dvd::BluRaysEditeur.last)
  end

  test "should show _dvd___blu_rays_editeur" do
    get _dvd___blu_rays_editeur_url(@_dvd___blu_rays_editeur)
    assert_response :success
  end

  test "should get edit" do
    get edit__dvd___blu_rays_editeur_url(@_dvd___blu_rays_editeur)
    assert_response :success
  end

  test "should update _dvd___blu_rays_editeur" do
    patch _dvd___blu_rays_editeur_url(@_dvd___blu_rays_editeur), params: { _dvd___blu_rays_editeur: { name: @_dvd___blu_rays_editeur.name } }
    assert_redirected_to _dvd___blu_rays_editeur_url(@_dvd___blu_rays_editeur)
  end

  test "should destroy _dvd___blu_rays_editeur" do
    assert_difference("Dvd::BluRaysEditeur.count", -1) do
      delete _dvd___blu_rays_editeur_url(@_dvd___blu_rays_editeur)
    end

    assert_redirected_to _dvd___blu_rays_editeurs_url
  end
end
