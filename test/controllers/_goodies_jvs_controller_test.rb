require "test_helper"

class GoodiesJvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_jv = _goodies_jvs(:one)
  end

  test "should get index" do
    get _goodies_jvs_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_jv_url
    assert_response :success
  end

  test "should create _goodies_jv" do
    assert_difference("GoodiesJv.count") do
      post _goodies_jvs_url, params: { _goodies_jv: { name: @_goodies_jv.name } }
    end

    assert_redirected_to _goodies_jv_url(GoodiesJv.last)
  end

  test "should show _goodies_jv" do
    get _goodies_jv_url(@_goodies_jv)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_jv_url(@_goodies_jv)
    assert_response :success
  end

  test "should update _goodies_jv" do
    patch _goodies_jv_url(@_goodies_jv), params: { _goodies_jv: { name: @_goodies_jv.name } }
    assert_redirected_to _goodies_jv_url(@_goodies_jv)
  end

  test "should destroy _goodies_jv" do
    assert_difference("GoodiesJv.count", -1) do
      delete _goodies_jv_url(@_goodies_jv)
    end

    assert_redirected_to _goodies_jvs_url
  end
end
