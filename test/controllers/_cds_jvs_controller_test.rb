require "test_helper"

class CdsJvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_cds_jv = _cds_jvs(:one)
  end

  test "should get index" do
    get _cds_jvs_url
    assert_response :success
  end

  test "should get new" do
    get new__cds_jv_url
    assert_response :success
  end

  test "should create _cds_jv" do
    assert_difference("CdsJv.count") do
      post _cds_jvs_url, params: { _cds_jv: { name: @_cds_jv.name } }
    end

    assert_redirected_to _cds_jv_url(CdsJv.last)
  end

  test "should show _cds_jv" do
    get _cds_jv_url(@_cds_jv)
    assert_response :success
  end

  test "should get edit" do
    get edit__cds_jv_url(@_cds_jv)
    assert_response :success
  end

  test "should update _cds_jv" do
    patch _cds_jv_url(@_cds_jv), params: { _cds_jv: { name: @_cds_jv.name } }
    assert_redirected_to _cds_jv_url(@_cds_jv)
  end

  test "should destroy _cds_jv" do
    assert_difference("CdsJv.count", -1) do
      delete _cds_jv_url(@_cds_jv)
    end

    assert_redirected_to _cds_jvs_url
  end
end
