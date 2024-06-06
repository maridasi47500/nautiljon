require "test_helper"

class DoujinshisDoujinshisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_doujinshi = _doujinshis_doujinshis(:one)
  end

  test "should get index" do
    get _doujinshis_doujinshis_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_doujinshi_url
    assert_response :success
  end

  test "should create _doujinshis_doujinshi" do
    assert_difference("DoujinshisDoujinshi.count") do
      post _doujinshis_doujinshis_url, params: { _doujinshis_doujinshi: { name: @_doujinshis_doujinshi.name } }
    end

    assert_redirected_to _doujinshis_doujinshi_url(DoujinshisDoujinshi.last)
  end

  test "should show _doujinshis_doujinshi" do
    get _doujinshis_doujinshi_url(@_doujinshis_doujinshi)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_doujinshi_url(@_doujinshis_doujinshi)
    assert_response :success
  end

  test "should update _doujinshis_doujinshi" do
    patch _doujinshis_doujinshi_url(@_doujinshis_doujinshi), params: { _doujinshis_doujinshi: { name: @_doujinshis_doujinshi.name } }
    assert_redirected_to _doujinshis_doujinshi_url(@_doujinshis_doujinshi)
  end

  test "should destroy _doujinshis_doujinshi" do
    assert_difference("DoujinshisDoujinshi.count", -1) do
      delete _doujinshis_doujinshi_url(@_doujinshis_doujinshi)
    end

    assert_redirected_to _doujinshis_doujinshis_url
  end
end
