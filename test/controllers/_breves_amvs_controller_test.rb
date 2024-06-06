require "test_helper"

class BrevesAmvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_amv = _breves_amvs(:one)
  end

  test "should get index" do
    get _breves_amvs_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_amv_url
    assert_response :success
  end

  test "should create _breves_amv" do
    assert_difference("BrevesAmv.count") do
      post _breves_amvs_url, params: { _breves_amv: { name: @_breves_amv.name } }
    end

    assert_redirected_to _breves_amv_url(BrevesAmv.last)
  end

  test "should show _breves_amv" do
    get _breves_amv_url(@_breves_amv)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_amv_url(@_breves_amv)
    assert_response :success
  end

  test "should update _breves_amv" do
    patch _breves_amv_url(@_breves_amv), params: { _breves_amv: { name: @_breves_amv.name } }
    assert_redirected_to _breves_amv_url(@_breves_amv)
  end

  test "should destroy _breves_amv" do
    assert_difference("BrevesAmv.count", -1) do
      delete _breves_amv_url(@_breves_amv)
    end

    assert_redirected_to _breves_amvs_url
  end
end
