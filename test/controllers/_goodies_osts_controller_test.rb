require "test_helper"

class GoodiesOstsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_ost = _goodies_osts(:one)
  end

  test "should get index" do
    get _goodies_osts_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_ost_url
    assert_response :success
  end

  test "should create _goodies_ost" do
    assert_difference("GoodiesOst.count") do
      post _goodies_osts_url, params: { _goodies_ost: { name: @_goodies_ost.name } }
    end

    assert_redirected_to _goodies_ost_url(GoodiesOst.last)
  end

  test "should show _goodies_ost" do
    get _goodies_ost_url(@_goodies_ost)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_ost_url(@_goodies_ost)
    assert_response :success
  end

  test "should update _goodies_ost" do
    patch _goodies_ost_url(@_goodies_ost), params: { _goodies_ost: { name: @_goodies_ost.name } }
    assert_redirected_to _goodies_ost_url(@_goodies_ost)
  end

  test "should destroy _goodies_ost" do
    assert_difference("GoodiesOst.count", -1) do
      delete _goodies_ost_url(@_goodies_ost)
    end

    assert_redirected_to _goodies_osts_url
  end
end
