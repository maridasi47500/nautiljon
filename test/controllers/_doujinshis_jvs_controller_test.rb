require "test_helper"

class DoujinshisJvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_jv = _doujinshis_jvs(:one)
  end

  test "should get index" do
    get _doujinshis_jvs_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_jv_url
    assert_response :success
  end

  test "should create _doujinshis_jv" do
    assert_difference("DoujinshisJv.count") do
      post _doujinshis_jvs_url, params: { _doujinshis_jv: { name: @_doujinshis_jv.name } }
    end

    assert_redirected_to _doujinshis_jv_url(DoujinshisJv.last)
  end

  test "should show _doujinshis_jv" do
    get _doujinshis_jv_url(@_doujinshis_jv)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_jv_url(@_doujinshis_jv)
    assert_response :success
  end

  test "should update _doujinshis_jv" do
    patch _doujinshis_jv_url(@_doujinshis_jv), params: { _doujinshis_jv: { name: @_doujinshis_jv.name } }
    assert_redirected_to _doujinshis_jv_url(@_doujinshis_jv)
  end

  test "should destroy _doujinshis_jv" do
    assert_difference("DoujinshisJv.count", -1) do
      delete _doujinshis_jv_url(@_doujinshis_jv)
    end

    assert_redirected_to _doujinshis_jvs_url
  end
end
