require "test_helper"

class DramasLnPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_ln_plu = _dramas_ln_plus(:one)
  end

  test "should get index" do
    get _dramas_ln_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_ln_plu_url
    assert_response :success
  end

  test "should create _dramas_ln_plu" do
    assert_difference("DramasLnPlu.count") do
      post _dramas_ln_plus_url, params: { _dramas_ln_plu: { name: @_dramas_ln_plu.name } }
    end

    assert_redirected_to _dramas_ln_plu_url(DramasLnPlu.last)
  end

  test "should show _dramas_ln_plu" do
    get _dramas_ln_plu_url(@_dramas_ln_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_ln_plu_url(@_dramas_ln_plu)
    assert_response :success
  end

  test "should update _dramas_ln_plu" do
    patch _dramas_ln_plu_url(@_dramas_ln_plu), params: { _dramas_ln_plu: { name: @_dramas_ln_plu.name } }
    assert_redirected_to _dramas_ln_plu_url(@_dramas_ln_plu)
  end

  test "should destroy _dramas_ln_plu" do
    assert_difference("DramasLnPlu.count", -1) do
      delete _dramas_ln_plu_url(@_dramas_ln_plu)
    end

    assert_redirected_to _dramas_ln_plus_url
  end
end
