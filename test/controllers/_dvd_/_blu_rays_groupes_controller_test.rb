require "test_helper"

class Dvd::BluRaysGroupesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dvd___blu_rays_groupe = _dvd___blu_rays_groupes(:one)
  end

  test "should get index" do
    get _dvd___blu_rays_groupes_url
    assert_response :success
  end

  test "should get new" do
    get new__dvd___blu_rays_groupe_url
    assert_response :success
  end

  test "should create _dvd___blu_rays_groupe" do
    assert_difference("Dvd::BluRaysGroupe.count") do
      post _dvd___blu_rays_groupes_url, params: { _dvd___blu_rays_groupe: { name: @_dvd___blu_rays_groupe.name } }
    end

    assert_redirected_to _dvd___blu_rays_groupe_url(Dvd::BluRaysGroupe.last)
  end

  test "should show _dvd___blu_rays_groupe" do
    get _dvd___blu_rays_groupe_url(@_dvd___blu_rays_groupe)
    assert_response :success
  end

  test "should get edit" do
    get edit__dvd___blu_rays_groupe_url(@_dvd___blu_rays_groupe)
    assert_response :success
  end

  test "should update _dvd___blu_rays_groupe" do
    patch _dvd___blu_rays_groupe_url(@_dvd___blu_rays_groupe), params: { _dvd___blu_rays_groupe: { name: @_dvd___blu_rays_groupe.name } }
    assert_redirected_to _dvd___blu_rays_groupe_url(@_dvd___blu_rays_groupe)
  end

  test "should destroy _dvd___blu_rays_groupe" do
    assert_difference("Dvd::BluRaysGroupe.count", -1) do
      delete _dvd___blu_rays_groupe_url(@_dvd___blu_rays_groupe)
    end

    assert_redirected_to _dvd___blu_rays_groupes_url
  end
end
