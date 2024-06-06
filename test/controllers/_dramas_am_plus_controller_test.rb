require "test_helper"

class DramasAmPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_am_plu = _dramas_am_plus(:one)
  end

  test "should get index" do
    get _dramas_am_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_am_plu_url
    assert_response :success
  end

  test "should create _dramas_am_plu" do
    assert_difference("DramasAmPlu.count") do
      post _dramas_am_plus_url, params: { _dramas_am_plu: { name: @_dramas_am_plu.name } }
    end

    assert_redirected_to _dramas_am_plu_url(DramasAmPlu.last)
  end

  test "should show _dramas_am_plu" do
    get _dramas_am_plu_url(@_dramas_am_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_am_plu_url(@_dramas_am_plu)
    assert_response :success
  end

  test "should update _dramas_am_plu" do
    patch _dramas_am_plu_url(@_dramas_am_plu), params: { _dramas_am_plu: { name: @_dramas_am_plu.name } }
    assert_redirected_to _dramas_am_plu_url(@_dramas_am_plu)
  end

  test "should destroy _dramas_am_plu" do
    assert_difference("DramasAmPlu.count", -1) do
      delete _dramas_am_plu_url(@_dramas_am_plu)
    end

    assert_redirected_to _dramas_am_plus_url
  end
end
