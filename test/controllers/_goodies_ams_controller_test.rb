require "test_helper"

class GoodiesAmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_am = _goodies_ams(:one)
  end

  test "should get index" do
    get _goodies_ams_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_am_url
    assert_response :success
  end

  test "should create _goodies_am" do
    assert_difference("GoodiesAm.count") do
      post _goodies_ams_url, params: { _goodies_am: { name: @_goodies_am.name } }
    end

    assert_redirected_to _goodies_am_url(GoodiesAm.last)
  end

  test "should show _goodies_am" do
    get _goodies_am_url(@_goodies_am)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_am_url(@_goodies_am)
    assert_response :success
  end

  test "should update _goodies_am" do
    patch _goodies_am_url(@_goodies_am), params: { _goodies_am: { name: @_goodies_am.name } }
    assert_redirected_to _goodies_am_url(@_goodies_am)
  end

  test "should destroy _goodies_am" do
    assert_difference("GoodiesAm.count", -1) do
      delete _goodies_am_url(@_goodies_am)
    end

    assert_redirected_to _goodies_ams_url
  end
end
