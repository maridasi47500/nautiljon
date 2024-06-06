require "test_helper"

class DramasEncoursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_encour = _dramas_encours(:one)
  end

  test "should get index" do
    get _dramas_encours_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_encour_url
    assert_response :success
  end

  test "should create _dramas_encour" do
    assert_difference("DramasEncour.count") do
      post _dramas_encours_url, params: { _dramas_encour: { name: @_dramas_encour.name } }
    end

    assert_redirected_to _dramas_encour_url(DramasEncour.last)
  end

  test "should show _dramas_encour" do
    get _dramas_encour_url(@_dramas_encour)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_encour_url(@_dramas_encour)
    assert_response :success
  end

  test "should update _dramas_encour" do
    patch _dramas_encour_url(@_dramas_encour), params: { _dramas_encour: { name: @_dramas_encour.name } }
    assert_redirected_to _dramas_encour_url(@_dramas_encour)
  end

  test "should destroy _dramas_encour" do
    assert_difference("DramasEncour.count", -1) do
      delete _dramas_encour_url(@_dramas_encour)
    end

    assert_redirected_to _dramas_encours_url
  end
end
