require "test_helper"

class DoujinsJvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujins_jv = _doujins_jvs(:one)
  end

  test "should get index" do
    get _doujins_jvs_url
    assert_response :success
  end

  test "should get new" do
    get new__doujins_jv_url
    assert_response :success
  end

  test "should create _doujins_jv" do
    assert_difference("DoujinsJv.count") do
      post _doujins_jvs_url, params: { _doujins_jv: { name: @_doujins_jv.name } }
    end

    assert_redirected_to _doujins_jv_url(DoujinsJv.last)
  end

  test "should show _doujins_jv" do
    get _doujins_jv_url(@_doujins_jv)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujins_jv_url(@_doujins_jv)
    assert_response :success
  end

  test "should update _doujins_jv" do
    patch _doujins_jv_url(@_doujins_jv), params: { _doujins_jv: { name: @_doujins_jv.name } }
    assert_redirected_to _doujins_jv_url(@_doujins_jv)
  end

  test "should destroy _doujins_jv" do
    assert_difference("DoujinsJv.count", -1) do
      delete _doujins_jv_url(@_doujins_jv)
    end

    assert_redirected_to _doujins_jvs_url
  end
end
