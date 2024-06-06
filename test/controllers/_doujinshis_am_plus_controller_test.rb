require "test_helper"

class DoujinshisAmPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_am_plu = _doujinshis_am_plus(:one)
  end

  test "should get index" do
    get _doujinshis_am_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_am_plu_url
    assert_response :success
  end

  test "should create _doujinshis_am_plu" do
    assert_difference("DoujinshisAmPlu.count") do
      post _doujinshis_am_plus_url, params: { _doujinshis_am_plu: { name: @_doujinshis_am_plu.name } }
    end

    assert_redirected_to _doujinshis_am_plu_url(DoujinshisAmPlu.last)
  end

  test "should show _doujinshis_am_plu" do
    get _doujinshis_am_plu_url(@_doujinshis_am_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_am_plu_url(@_doujinshis_am_plu)
    assert_response :success
  end

  test "should update _doujinshis_am_plu" do
    patch _doujinshis_am_plu_url(@_doujinshis_am_plu), params: { _doujinshis_am_plu: { name: @_doujinshis_am_plu.name } }
    assert_redirected_to _doujinshis_am_plu_url(@_doujinshis_am_plu)
  end

  test "should destroy _doujinshis_am_plu" do
    assert_difference("DoujinshisAmPlu.count", -1) do
      delete _doujinshis_am_plu_url(@_doujinshis_am_plu)
    end

    assert_redirected_to _doujinshis_am_plus_url
  end
end
