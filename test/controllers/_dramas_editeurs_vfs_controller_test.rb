require "test_helper"

class DramasEditeursVfsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_editeurs_vf = _dramas_editeurs_vfs(:one)
  end

  test "should get index" do
    get _dramas_editeurs_vfs_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_editeurs_vf_url
    assert_response :success
  end

  test "should create _dramas_editeurs_vf" do
    assert_difference("DramasEditeursVf.count") do
      post _dramas_editeurs_vfs_url, params: { _dramas_editeurs_vf: { name: @_dramas_editeurs_vf.name } }
    end

    assert_redirected_to _dramas_editeurs_vf_url(DramasEditeursVf.last)
  end

  test "should show _dramas_editeurs_vf" do
    get _dramas_editeurs_vf_url(@_dramas_editeurs_vf)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_editeurs_vf_url(@_dramas_editeurs_vf)
    assert_response :success
  end

  test "should update _dramas_editeurs_vf" do
    patch _dramas_editeurs_vf_url(@_dramas_editeurs_vf), params: { _dramas_editeurs_vf: { name: @_dramas_editeurs_vf.name } }
    assert_redirected_to _dramas_editeurs_vf_url(@_dramas_editeurs_vf)
  end

  test "should destroy _dramas_editeurs_vf" do
    assert_difference("DramasEditeursVf.count", -1) do
      delete _dramas_editeurs_vf_url(@_dramas_editeurs_vf)
    end

    assert_redirected_to _dramas_editeurs_vfs_url
  end
end
