require "test_helper"

class Dvd::BluRaysTypeEditionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dvd___blu_rays_type_edition = _dvd___blu_rays_type_editions(:one)
  end

  test "should get index" do
    get _dvd___blu_rays_type_editions_url
    assert_response :success
  end

  test "should get new" do
    get new__dvd___blu_rays_type_edition_url
    assert_response :success
  end

  test "should create _dvd___blu_rays_type_edition" do
    assert_difference("Dvd::BluRaysTypeEdition.count") do
      post _dvd___blu_rays_type_editions_url, params: { _dvd___blu_rays_type_edition: { name: @_dvd___blu_rays_type_edition.name } }
    end

    assert_redirected_to _dvd___blu_rays_type_edition_url(Dvd::BluRaysTypeEdition.last)
  end

  test "should show _dvd___blu_rays_type_edition" do
    get _dvd___blu_rays_type_edition_url(@_dvd___blu_rays_type_edition)
    assert_response :success
  end

  test "should get edit" do
    get edit__dvd___blu_rays_type_edition_url(@_dvd___blu_rays_type_edition)
    assert_response :success
  end

  test "should update _dvd___blu_rays_type_edition" do
    patch _dvd___blu_rays_type_edition_url(@_dvd___blu_rays_type_edition), params: { _dvd___blu_rays_type_edition: { name: @_dvd___blu_rays_type_edition.name } }
    assert_redirected_to _dvd___blu_rays_type_edition_url(@_dvd___blu_rays_type_edition)
  end

  test "should destroy _dvd___blu_rays_type_edition" do
    assert_difference("Dvd::BluRaysTypeEdition.count", -1) do
      delete _dvd___blu_rays_type_edition_url(@_dvd___blu_rays_type_edition)
    end

    assert_redirected_to _dvd___blu_rays_type_editions_url
  end
end
