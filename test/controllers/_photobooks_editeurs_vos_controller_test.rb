require "test_helper"

class PhotobooksEditeursVosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_photobooks_editeurs_vo = _photobooks_editeurs_vos(:one)
  end

  test "should get index" do
    get _photobooks_editeurs_vos_url
    assert_response :success
  end

  test "should get new" do
    get new__photobooks_editeurs_vo_url
    assert_response :success
  end

  test "should create _photobooks_editeurs_vo" do
    assert_difference("PhotobooksEditeursVo.count") do
      post _photobooks_editeurs_vos_url, params: { _photobooks_editeurs_vo: { name: @_photobooks_editeurs_vo.name } }
    end

    assert_redirected_to _photobooks_editeurs_vo_url(PhotobooksEditeursVo.last)
  end

  test "should show _photobooks_editeurs_vo" do
    get _photobooks_editeurs_vo_url(@_photobooks_editeurs_vo)
    assert_response :success
  end

  test "should get edit" do
    get edit__photobooks_editeurs_vo_url(@_photobooks_editeurs_vo)
    assert_response :success
  end

  test "should update _photobooks_editeurs_vo" do
    patch _photobooks_editeurs_vo_url(@_photobooks_editeurs_vo), params: { _photobooks_editeurs_vo: { name: @_photobooks_editeurs_vo.name } }
    assert_redirected_to _photobooks_editeurs_vo_url(@_photobooks_editeurs_vo)
  end

  test "should destroy _photobooks_editeurs_vo" do
    assert_difference("PhotobooksEditeursVo.count", -1) do
      delete _photobooks_editeurs_vo_url(@_photobooks_editeurs_vo)
    end

    assert_redirected_to _photobooks_editeurs_vos_url
  end
end
