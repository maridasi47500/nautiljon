require "test_helper"

class CdsCdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_cds_cd = _cds_cds(:one)
  end

  test "should get index" do
    get _cds_cds_url
    assert_response :success
  end

  test "should get new" do
    get new__cds_cd_url
    assert_response :success
  end

  test "should create _cds_cd" do
    assert_difference("CdsCd.count") do
      post _cds_cds_url, params: { _cds_cd: { name: @_cds_cd.name } }
    end

    assert_redirected_to _cds_cd_url(CdsCd.last)
  end

  test "should show _cds_cd" do
    get _cds_cd_url(@_cds_cd)
    assert_response :success
  end

  test "should get edit" do
    get edit__cds_cd_url(@_cds_cd)
    assert_response :success
  end

  test "should update _cds_cd" do
    patch _cds_cd_url(@_cds_cd), params: { _cds_cd: { name: @_cds_cd.name } }
    assert_redirected_to _cds_cd_url(@_cds_cd)
  end

  test "should destroy _cds_cd" do
    assert_difference("CdsCd.count", -1) do
      delete _cds_cd_url(@_cds_cd)
    end

    assert_redirected_to _cds_cds_url
  end
end
