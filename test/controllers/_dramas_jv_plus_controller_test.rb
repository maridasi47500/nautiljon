require "test_helper"

class DramasJvPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_jv_plu = _dramas_jv_plus(:one)
  end

  test "should get index" do
    get _dramas_jv_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_jv_plu_url
    assert_response :success
  end

  test "should create _dramas_jv_plu" do
    assert_difference("DramasJvPlu.count") do
      post _dramas_jv_plus_url, params: { _dramas_jv_plu: { name: @_dramas_jv_plu.name } }
    end

    assert_redirected_to _dramas_jv_plu_url(DramasJvPlu.last)
  end

  test "should show _dramas_jv_plu" do
    get _dramas_jv_plu_url(@_dramas_jv_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_jv_plu_url(@_dramas_jv_plu)
    assert_response :success
  end

  test "should update _dramas_jv_plu" do
    patch _dramas_jv_plu_url(@_dramas_jv_plu), params: { _dramas_jv_plu: { name: @_dramas_jv_plu.name } }
    assert_redirected_to _dramas_jv_plu_url(@_dramas_jv_plu)
  end

  test "should destroy _dramas_jv_plu" do
    assert_difference("DramasJvPlu.count", -1) do
      delete _dramas_jv_plu_url(@_dramas_jv_plu)
    end

    assert_redirected_to _dramas_jv_plus_url
  end
end
