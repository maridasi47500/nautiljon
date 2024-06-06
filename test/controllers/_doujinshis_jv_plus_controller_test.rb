require "test_helper"

class DoujinshisJvPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_jv_plu = _doujinshis_jv_plus(:one)
  end

  test "should get index" do
    get _doujinshis_jv_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_jv_plu_url
    assert_response :success
  end

  test "should create _doujinshis_jv_plu" do
    assert_difference("DoujinshisJvPlu.count") do
      post _doujinshis_jv_plus_url, params: { _doujinshis_jv_plu: { name: @_doujinshis_jv_plu.name } }
    end

    assert_redirected_to _doujinshis_jv_plu_url(DoujinshisJvPlu.last)
  end

  test "should show _doujinshis_jv_plu" do
    get _doujinshis_jv_plu_url(@_doujinshis_jv_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_jv_plu_url(@_doujinshis_jv_plu)
    assert_response :success
  end

  test "should update _doujinshis_jv_plu" do
    patch _doujinshis_jv_plu_url(@_doujinshis_jv_plu), params: { _doujinshis_jv_plu: { name: @_doujinshis_jv_plu.name } }
    assert_redirected_to _doujinshis_jv_plu_url(@_doujinshis_jv_plu)
  end

  test "should destroy _doujinshis_jv_plu" do
    assert_difference("DoujinshisJvPlu.count", -1) do
      delete _doujinshis_jv_plu_url(@_doujinshis_jv_plu)
    end

    assert_redirected_to _doujinshis_jv_plus_url
  end
end
