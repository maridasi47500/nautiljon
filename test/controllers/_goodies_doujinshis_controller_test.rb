require "test_helper"

class GoodiesDoujinshisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_doujinshi = _goodies_doujinshis(:one)
  end

  test "should get index" do
    get _goodies_doujinshis_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_doujinshi_url
    assert_response :success
  end

  test "should create _goodies_doujinshi" do
    assert_difference("GoodiesDoujinshi.count") do
      post _goodies_doujinshis_url, params: { _goodies_doujinshi: { name: @_goodies_doujinshi.name } }
    end

    assert_redirected_to _goodies_doujinshi_url(GoodiesDoujinshi.last)
  end

  test "should show _goodies_doujinshi" do
    get _goodies_doujinshi_url(@_goodies_doujinshi)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_doujinshi_url(@_goodies_doujinshi)
    assert_response :success
  end

  test "should update _goodies_doujinshi" do
    patch _goodies_doujinshi_url(@_goodies_doujinshi), params: { _goodies_doujinshi: { name: @_goodies_doujinshi.name } }
    assert_redirected_to _goodies_doujinshi_url(@_goodies_doujinshi)
  end

  test "should destroy _goodies_doujinshi" do
    assert_difference("GoodiesDoujinshi.count", -1) do
      delete _goodies_doujinshi_url(@_goodies_doujinshi)
    end

    assert_redirected_to _goodies_doujinshis_url
  end
end
