require "test_helper"

class GoodiesGoodiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_goody = _goodies_goodies(:one)
  end

  test "should get index" do
    get _goodies_goodies_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_goody_url
    assert_response :success
  end

  test "should create _goodies_goody" do
    assert_difference("GoodiesGoody.count") do
      post _goodies_goodies_url, params: { _goodies_goody: { name: @_goodies_goody.name } }
    end

    assert_redirected_to _goodies_goody_url(GoodiesGoody.last)
  end

  test "should show _goodies_goody" do
    get _goodies_goody_url(@_goodies_goody)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_goody_url(@_goodies_goody)
    assert_response :success
  end

  test "should update _goodies_goody" do
    patch _goodies_goody_url(@_goodies_goody), params: { _goodies_goody: { name: @_goodies_goody.name } }
    assert_redirected_to _goodies_goody_url(@_goodies_goody)
  end

  test "should destroy _goodies_goody" do
    assert_difference("GoodiesGoody.count", -1) do
      delete _goodies_goody_url(@_goodies_goody)
    end

    assert_redirected_to _goodies_goodies_url
  end
end
