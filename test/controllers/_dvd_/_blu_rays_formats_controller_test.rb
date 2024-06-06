require "test_helper"

class Dvd::BluRaysFormatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dvd___blu_rays_format = _dvd___blu_rays_formats(:one)
  end

  test "should get index" do
    get _dvd___blu_rays_formats_url
    assert_response :success
  end

  test "should get new" do
    get new__dvd___blu_rays_format_url
    assert_response :success
  end

  test "should create _dvd___blu_rays_format" do
    assert_difference("Dvd::BluRaysFormat.count") do
      post _dvd___blu_rays_formats_url, params: { _dvd___blu_rays_format: { name: @_dvd___blu_rays_format.name } }
    end

    assert_redirected_to _dvd___blu_rays_format_url(Dvd::BluRaysFormat.last)
  end

  test "should show _dvd___blu_rays_format" do
    get _dvd___blu_rays_format_url(@_dvd___blu_rays_format)
    assert_response :success
  end

  test "should get edit" do
    get edit__dvd___blu_rays_format_url(@_dvd___blu_rays_format)
    assert_response :success
  end

  test "should update _dvd___blu_rays_format" do
    patch _dvd___blu_rays_format_url(@_dvd___blu_rays_format), params: { _dvd___blu_rays_format: { name: @_dvd___blu_rays_format.name } }
    assert_redirected_to _dvd___blu_rays_format_url(@_dvd___blu_rays_format)
  end

  test "should destroy _dvd___blu_rays_format" do
    assert_difference("Dvd::BluRaysFormat.count", -1) do
      delete _dvd___blu_rays_format_url(@_dvd___blu_rays_format)
    end

    assert_redirected_to _dvd___blu_rays_formats_url
  end
end
