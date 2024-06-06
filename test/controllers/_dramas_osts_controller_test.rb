require "test_helper"

class DramasOstsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_ost = _dramas_osts(:one)
  end

  test "should get index" do
    get _dramas_osts_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_ost_url
    assert_response :success
  end

  test "should create _dramas_ost" do
    assert_difference("DramasOst.count") do
      post _dramas_osts_url, params: { _dramas_ost: { name: @_dramas_ost.name } }
    end

    assert_redirected_to _dramas_ost_url(DramasOst.last)
  end

  test "should show _dramas_ost" do
    get _dramas_ost_url(@_dramas_ost)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_ost_url(@_dramas_ost)
    assert_response :success
  end

  test "should update _dramas_ost" do
    patch _dramas_ost_url(@_dramas_ost), params: { _dramas_ost: { name: @_dramas_ost.name } }
    assert_redirected_to _dramas_ost_url(@_dramas_ost)
  end

  test "should destroy _dramas_ost" do
    assert_difference("DramasOst.count", -1) do
      delete _dramas_ost_url(@_dramas_ost)
    end

    assert_redirected_to _dramas_osts_url
  end
end
