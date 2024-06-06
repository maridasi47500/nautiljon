require "test_helper"

class BrevesJvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_jv = _breves_jvs(:one)
  end

  test "should get index" do
    get _breves_jvs_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_jv_url
    assert_response :success
  end

  test "should create _breves_jv" do
    assert_difference("BrevesJv.count") do
      post _breves_jvs_url, params: { _breves_jv: { name: @_breves_jv.name } }
    end

    assert_redirected_to _breves_jv_url(BrevesJv.last)
  end

  test "should show _breves_jv" do
    get _breves_jv_url(@_breves_jv)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_jv_url(@_breves_jv)
    assert_response :success
  end

  test "should update _breves_jv" do
    patch _breves_jv_url(@_breves_jv), params: { _breves_jv: { name: @_breves_jv.name } }
    assert_redirected_to _breves_jv_url(@_breves_jv)
  end

  test "should destroy _breves_jv" do
    assert_difference("BrevesJv.count", -1) do
      delete _breves_jv_url(@_breves_jv)
    end

    assert_redirected_to _breves_jvs_url
  end
end
