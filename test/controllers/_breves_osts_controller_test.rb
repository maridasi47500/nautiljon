require "test_helper"

class BrevesOstsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_ost = _breves_osts(:one)
  end

  test "should get index" do
    get _breves_osts_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_ost_url
    assert_response :success
  end

  test "should create _breves_ost" do
    assert_difference("BrevesOst.count") do
      post _breves_osts_url, params: { _breves_ost: { name: @_breves_ost.name } }
    end

    assert_redirected_to _breves_ost_url(BrevesOst.last)
  end

  test "should show _breves_ost" do
    get _breves_ost_url(@_breves_ost)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_ost_url(@_breves_ost)
    assert_response :success
  end

  test "should update _breves_ost" do
    patch _breves_ost_url(@_breves_ost), params: { _breves_ost: { name: @_breves_ost.name } }
    assert_redirected_to _breves_ost_url(@_breves_ost)
  end

  test "should destroy _breves_ost" do
    assert_difference("BrevesOst.count", -1) do
      delete _breves_ost_url(@_breves_ost)
    end

    assert_redirected_to _breves_osts_url
  end
end
