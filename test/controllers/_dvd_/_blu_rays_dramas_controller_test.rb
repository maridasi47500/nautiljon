require "test_helper"

class Dvd::BluRaysDramasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dvd___blu_rays_drama = _dvd___blu_rays_dramas(:one)
  end

  test "should get index" do
    get _dvd___blu_rays_dramas_url
    assert_response :success
  end

  test "should get new" do
    get new__dvd___blu_rays_drama_url
    assert_response :success
  end

  test "should create _dvd___blu_rays_drama" do
    assert_difference("Dvd::BluRaysDrama.count") do
      post _dvd___blu_rays_dramas_url, params: { _dvd___blu_rays_drama: { name: @_dvd___blu_rays_drama.name } }
    end

    assert_redirected_to _dvd___blu_rays_drama_url(Dvd::BluRaysDrama.last)
  end

  test "should show _dvd___blu_rays_drama" do
    get _dvd___blu_rays_drama_url(@_dvd___blu_rays_drama)
    assert_response :success
  end

  test "should get edit" do
    get edit__dvd___blu_rays_drama_url(@_dvd___blu_rays_drama)
    assert_response :success
  end

  test "should update _dvd___blu_rays_drama" do
    patch _dvd___blu_rays_drama_url(@_dvd___blu_rays_drama), params: { _dvd___blu_rays_drama: { name: @_dvd___blu_rays_drama.name } }
    assert_redirected_to _dvd___blu_rays_drama_url(@_dvd___blu_rays_drama)
  end

  test "should destroy _dvd___blu_rays_drama" do
    assert_difference("Dvd::BluRaysDrama.count", -1) do
      delete _dvd___blu_rays_drama_url(@_dvd___blu_rays_drama)
    end

    assert_redirected_to _dvd___blu_rays_dramas_url
  end
end
