require "test_helper"

class DramasJvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_jv = _dramas_jvs(:one)
  end

  test "should get index" do
    get _dramas_jvs_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_jv_url
    assert_response :success
  end

  test "should create _dramas_jv" do
    assert_difference("DramasJv.count") do
      post _dramas_jvs_url, params: { _dramas_jv: { name: @_dramas_jv.name } }
    end

    assert_redirected_to _dramas_jv_url(DramasJv.last)
  end

  test "should show _dramas_jv" do
    get _dramas_jv_url(@_dramas_jv)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_jv_url(@_dramas_jv)
    assert_response :success
  end

  test "should update _dramas_jv" do
    patch _dramas_jv_url(@_dramas_jv), params: { _dramas_jv: { name: @_dramas_jv.name } }
    assert_redirected_to _dramas_jv_url(@_dramas_jv)
  end

  test "should destroy _dramas_jv" do
    assert_difference("DramasJv.count", -1) do
      delete _dramas_jv_url(@_dramas_jv)
    end

    assert_redirected_to _dramas_jvs_url
  end
end
