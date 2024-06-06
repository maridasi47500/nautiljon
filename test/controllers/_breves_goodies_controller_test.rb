require "test_helper"

class BrevesGoodiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_goody = _breves_goodies(:one)
  end

  test "should get index" do
    get _breves_goodies_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_goody_url
    assert_response :success
  end

  test "should create _breves_goody" do
    assert_difference("BrevesGoody.count") do
      post _breves_goodies_url, params: { _breves_goody: { name: @_breves_goody.name } }
    end

    assert_redirected_to _breves_goody_url(BrevesGoody.last)
  end

  test "should show _breves_goody" do
    get _breves_goody_url(@_breves_goody)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_goody_url(@_breves_goody)
    assert_response :success
  end

  test "should update _breves_goody" do
    patch _breves_goody_url(@_breves_goody), params: { _breves_goody: { name: @_breves_goody.name } }
    assert_redirected_to _breves_goody_url(@_breves_goody)
  end

  test "should destroy _breves_goody" do
    assert_difference("BrevesGoody.count", -1) do
      delete _breves_goody_url(@_breves_goody)
    end

    assert_redirected_to _breves_goodies_url
  end
end
