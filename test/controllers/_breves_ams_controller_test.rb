require "test_helper"

class BrevesAmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_am = _breves_ams(:one)
  end

  test "should get index" do
    get _breves_ams_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_am_url
    assert_response :success
  end

  test "should create _breves_am" do
    assert_difference("BrevesAm.count") do
      post _breves_ams_url, params: { _breves_am: { name: @_breves_am.name } }
    end

    assert_redirected_to _breves_am_url(BrevesAm.last)
  end

  test "should show _breves_am" do
    get _breves_am_url(@_breves_am)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_am_url(@_breves_am)
    assert_response :success
  end

  test "should update _breves_am" do
    patch _breves_am_url(@_breves_am), params: { _breves_am: { name: @_breves_am.name } }
    assert_redirected_to _breves_am_url(@_breves_am)
  end

  test "should destroy _breves_am" do
    assert_difference("BrevesAm.count", -1) do
      delete _breves_am_url(@_breves_am)
    end

    assert_redirected_to _breves_ams_url
  end
end
