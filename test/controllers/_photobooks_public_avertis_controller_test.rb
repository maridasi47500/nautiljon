require "test_helper"

class PhotobooksPublicAvertisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_photobooks_public_averti = _photobooks_public_avertis(:one)
  end

  test "should get index" do
    get _photobooks_public_avertis_url
    assert_response :success
  end

  test "should get new" do
    get new__photobooks_public_averti_url
    assert_response :success
  end

  test "should create _photobooks_public_averti" do
    assert_difference("PhotobooksPublicAverti.count") do
      post _photobooks_public_avertis_url, params: { _photobooks_public_averti: { name: @_photobooks_public_averti.name } }
    end

    assert_redirected_to _photobooks_public_averti_url(PhotobooksPublicAverti.last)
  end

  test "should show _photobooks_public_averti" do
    get _photobooks_public_averti_url(@_photobooks_public_averti)
    assert_response :success
  end

  test "should get edit" do
    get edit__photobooks_public_averti_url(@_photobooks_public_averti)
    assert_response :success
  end

  test "should update _photobooks_public_averti" do
    patch _photobooks_public_averti_url(@_photobooks_public_averti), params: { _photobooks_public_averti: { name: @_photobooks_public_averti.name } }
    assert_redirected_to _photobooks_public_averti_url(@_photobooks_public_averti)
  end

  test "should destroy _photobooks_public_averti" do
    assert_difference("PhotobooksPublicAverti.count", -1) do
      delete _photobooks_public_averti_url(@_photobooks_public_averti)
    end

    assert_redirected_to _photobooks_public_avertis_url
  end
end
