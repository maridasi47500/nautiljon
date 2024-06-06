require "test_helper"

class DoujinshisLnPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_ln_plu = _doujinshis_ln_plus(:one)
  end

  test "should get index" do
    get _doujinshis_ln_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_ln_plu_url
    assert_response :success
  end

  test "should create _doujinshis_ln_plu" do
    assert_difference("DoujinshisLnPlu.count") do
      post _doujinshis_ln_plus_url, params: { _doujinshis_ln_plu: { name: @_doujinshis_ln_plu.name } }
    end

    assert_redirected_to _doujinshis_ln_plu_url(DoujinshisLnPlu.last)
  end

  test "should show _doujinshis_ln_plu" do
    get _doujinshis_ln_plu_url(@_doujinshis_ln_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_ln_plu_url(@_doujinshis_ln_plu)
    assert_response :success
  end

  test "should update _doujinshis_ln_plu" do
    patch _doujinshis_ln_plu_url(@_doujinshis_ln_plu), params: { _doujinshis_ln_plu: { name: @_doujinshis_ln_plu.name } }
    assert_redirected_to _doujinshis_ln_plu_url(@_doujinshis_ln_plu)
  end

  test "should destroy _doujinshis_ln_plu" do
    assert_difference("DoujinshisLnPlu.count", -1) do
      delete _doujinshis_ln_plu_url(@_doujinshis_ln_plu)
    end

    assert_redirected_to _doujinshis_ln_plus_url
  end
end
