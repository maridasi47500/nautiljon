require "test_helper"

class CdsLnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_cds_ln = _cds_lns(:one)
  end

  test "should get index" do
    get _cds_lns_url
    assert_response :success
  end

  test "should get new" do
    get new__cds_ln_url
    assert_response :success
  end

  test "should create _cds_ln" do
    assert_difference("CdsLn.count") do
      post _cds_lns_url, params: { _cds_ln: { name: @_cds_ln.name } }
    end

    assert_redirected_to _cds_ln_url(CdsLn.last)
  end

  test "should show _cds_ln" do
    get _cds_ln_url(@_cds_ln)
    assert_response :success
  end

  test "should get edit" do
    get edit__cds_ln_url(@_cds_ln)
    assert_response :success
  end

  test "should update _cds_ln" do
    patch _cds_ln_url(@_cds_ln), params: { _cds_ln: { name: @_cds_ln.name } }
    assert_redirected_to _cds_ln_url(@_cds_ln)
  end

  test "should destroy _cds_ln" do
    assert_difference("CdsLn.count", -1) do
      delete _cds_ln_url(@_cds_ln)
    end

    assert_redirected_to _cds_lns_url
  end
end
