require "test_helper"

class DoujinshisAmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_am = _doujinshis_ams(:one)
  end

  test "should get index" do
    get _doujinshis_ams_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_am_url
    assert_response :success
  end

  test "should create _doujinshis_am" do
    assert_difference("DoujinshisAm.count") do
      post _doujinshis_ams_url, params: { _doujinshis_am: { name: @_doujinshis_am.name } }
    end

    assert_redirected_to _doujinshis_am_url(DoujinshisAm.last)
  end

  test "should show _doujinshis_am" do
    get _doujinshis_am_url(@_doujinshis_am)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_am_url(@_doujinshis_am)
    assert_response :success
  end

  test "should update _doujinshis_am" do
    patch _doujinshis_am_url(@_doujinshis_am), params: { _doujinshis_am: { name: @_doujinshis_am.name } }
    assert_redirected_to _doujinshis_am_url(@_doujinshis_am)
  end

  test "should destroy _doujinshis_am" do
    assert_difference("DoujinshisAm.count", -1) do
      delete _doujinshis_am_url(@_doujinshis_am)
    end

    assert_redirected_to _doujinshis_ams_url
  end
end
