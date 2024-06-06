require "test_helper"

class DramasAmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_am = _dramas_ams(:one)
  end

  test "should get index" do
    get _dramas_ams_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_am_url
    assert_response :success
  end

  test "should create _dramas_am" do
    assert_difference("DramasAm.count") do
      post _dramas_ams_url, params: { _dramas_am: { name: @_dramas_am.name } }
    end

    assert_redirected_to _dramas_am_url(DramasAm.last)
  end

  test "should show _dramas_am" do
    get _dramas_am_url(@_dramas_am)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_am_url(@_dramas_am)
    assert_response :success
  end

  test "should update _dramas_am" do
    patch _dramas_am_url(@_dramas_am), params: { _dramas_am: { name: @_dramas_am.name } }
    assert_redirected_to _dramas_am_url(@_dramas_am)
  end

  test "should destroy _dramas_am" do
    assert_difference("DramasAm.count", -1) do
      delete _dramas_am_url(@_dramas_am)
    end

    assert_redirected_to _dramas_ams_url
  end
end
