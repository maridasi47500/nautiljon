require "test_helper"

class DoujinshisDoujinshiPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_doujinshi_plu = _doujinshis_doujinshi_plus(:one)
  end

  test "should get index" do
    get _doujinshis_doujinshi_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_doujinshi_plu_url
    assert_response :success
  end

  test "should create _doujinshis_doujinshi_plu" do
    assert_difference("DoujinshisDoujinshiPlu.count") do
      post _doujinshis_doujinshi_plus_url, params: { _doujinshis_doujinshi_plu: { name: @_doujinshis_doujinshi_plu.name } }
    end

    assert_redirected_to _doujinshis_doujinshi_plu_url(DoujinshisDoujinshiPlu.last)
  end

  test "should show _doujinshis_doujinshi_plu" do
    get _doujinshis_doujinshi_plu_url(@_doujinshis_doujinshi_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_doujinshi_plu_url(@_doujinshis_doujinshi_plu)
    assert_response :success
  end

  test "should update _doujinshis_doujinshi_plu" do
    patch _doujinshis_doujinshi_plu_url(@_doujinshis_doujinshi_plu), params: { _doujinshis_doujinshi_plu: { name: @_doujinshis_doujinshi_plu.name } }
    assert_redirected_to _doujinshis_doujinshi_plu_url(@_doujinshis_doujinshi_plu)
  end

  test "should destroy _doujinshis_doujinshi_plu" do
    assert_difference("DoujinshisDoujinshiPlu.count", -1) do
      delete _doujinshis_doujinshi_plu_url(@_doujinshis_doujinshi_plu)
    end

    assert_redirected_to _doujinshis_doujinshi_plus_url
  end
end
