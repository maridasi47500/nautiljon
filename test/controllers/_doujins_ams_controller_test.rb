require "test_helper"

class DoujinsAmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujins_am = _doujins_ams(:one)
  end

  test "should get index" do
    get _doujins_ams_url
    assert_response :success
  end

  test "should get new" do
    get new__doujins_am_url
    assert_response :success
  end

  test "should create _doujins_am" do
    assert_difference("DoujinsAm.count") do
      post _doujins_ams_url, params: { _doujins_am: { name: @_doujins_am.name } }
    end

    assert_redirected_to _doujins_am_url(DoujinsAm.last)
  end

  test "should show _doujins_am" do
    get _doujins_am_url(@_doujins_am)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujins_am_url(@_doujins_am)
    assert_response :success
  end

  test "should update _doujins_am" do
    patch _doujins_am_url(@_doujins_am), params: { _doujins_am: { name: @_doujins_am.name } }
    assert_redirected_to _doujins_am_url(@_doujins_am)
  end

  test "should destroy _doujins_am" do
    assert_difference("DoujinsAm.count", -1) do
      delete _doujins_am_url(@_doujins_am)
    end

    assert_redirected_to _doujins_ams_url
  end
end
