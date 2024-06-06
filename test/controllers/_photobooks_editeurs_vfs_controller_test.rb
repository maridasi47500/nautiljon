require "test_helper"

class PhotobooksEditeursVfsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_photobooks_editeurs_vf = _photobooks_editeurs_vfs(:one)
  end

  test "should get index" do
    get _photobooks_editeurs_vfs_url
    assert_response :success
  end

  test "should get new" do
    get new__photobooks_editeurs_vf_url
    assert_response :success
  end

  test "should create _photobooks_editeurs_vf" do
    assert_difference("PhotobooksEditeursVf.count") do
      post _photobooks_editeurs_vfs_url, params: { _photobooks_editeurs_vf: { name: @_photobooks_editeurs_vf.name } }
    end

    assert_redirected_to _photobooks_editeurs_vf_url(PhotobooksEditeursVf.last)
  end

  test "should show _photobooks_editeurs_vf" do
    get _photobooks_editeurs_vf_url(@_photobooks_editeurs_vf)
    assert_response :success
  end

  test "should get edit" do
    get edit__photobooks_editeurs_vf_url(@_photobooks_editeurs_vf)
    assert_response :success
  end

  test "should update _photobooks_editeurs_vf" do
    patch _photobooks_editeurs_vf_url(@_photobooks_editeurs_vf), params: { _photobooks_editeurs_vf: { name: @_photobooks_editeurs_vf.name } }
    assert_redirected_to _photobooks_editeurs_vf_url(@_photobooks_editeurs_vf)
  end

  test "should destroy _photobooks_editeurs_vf" do
    assert_difference("PhotobooksEditeursVf.count", -1) do
      delete _photobooks_editeurs_vf_url(@_photobooks_editeurs_vf)
    end

    assert_redirected_to _photobooks_editeurs_vfs_url
  end
end
