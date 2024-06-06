require "test_helper"

class CdsAmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_cds_am = _cds_ams(:one)
  end

  test "should get index" do
    get _cds_ams_url
    assert_response :success
  end

  test "should get new" do
    get new__cds_am_url
    assert_response :success
  end

  test "should create _cds_am" do
    assert_difference("CdsAm.count") do
      post _cds_ams_url, params: { _cds_am: { name: @_cds_am.name } }
    end

    assert_redirected_to _cds_am_url(CdsAm.last)
  end

  test "should show _cds_am" do
    get _cds_am_url(@_cds_am)
    assert_response :success
  end

  test "should get edit" do
    get edit__cds_am_url(@_cds_am)
    assert_response :success
  end

  test "should update _cds_am" do
    patch _cds_am_url(@_cds_am), params: { _cds_am: { name: @_cds_am.name } }
    assert_redirected_to _cds_am_url(@_cds_am)
  end

  test "should destroy _cds_am" do
    assert_difference("CdsAm.count", -1) do
      delete _cds_am_url(@_cds_am)
    end

    assert_redirected_to _cds_ams_url
  end
end
