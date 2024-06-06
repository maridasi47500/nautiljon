require "test_helper"

class PhotobooksCdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_photobooks_cd = _photobooks_cds(:one)
  end

  test "should get index" do
    get _photobooks_cds_url
    assert_response :success
  end

  test "should get new" do
    get new__photobooks_cd_url
    assert_response :success
  end

  test "should create _photobooks_cd" do
    assert_difference("PhotobooksCd.count") do
      post _photobooks_cds_url, params: { _photobooks_cd: { name: @_photobooks_cd.name } }
    end

    assert_redirected_to _photobooks_cd_url(PhotobooksCd.last)
  end

  test "should show _photobooks_cd" do
    get _photobooks_cd_url(@_photobooks_cd)
    assert_response :success
  end

  test "should get edit" do
    get edit__photobooks_cd_url(@_photobooks_cd)
    assert_response :success
  end

  test "should update _photobooks_cd" do
    patch _photobooks_cd_url(@_photobooks_cd), params: { _photobooks_cd: { name: @_photobooks_cd.name } }
    assert_redirected_to _photobooks_cd_url(@_photobooks_cd)
  end

  test "should destroy _photobooks_cd" do
    assert_difference("PhotobooksCd.count", -1) do
      delete _photobooks_cd_url(@_photobooks_cd)
    end

    assert_redirected_to _photobooks_cds_url
  end
end
