require "test_helper"

class DramasTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_type = _dramas_types(:one)
  end

  test "should get index" do
    get _dramas_types_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_type_url
    assert_response :success
  end

  test "should create _dramas_type" do
    assert_difference("DramasType.count") do
      post _dramas_types_url, params: { _dramas_type: { name: @_dramas_type.name } }
    end

    assert_redirected_to _dramas_type_url(DramasType.last)
  end

  test "should show _dramas_type" do
    get _dramas_type_url(@_dramas_type)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_type_url(@_dramas_type)
    assert_response :success
  end

  test "should update _dramas_type" do
    patch _dramas_type_url(@_dramas_type), params: { _dramas_type: { name: @_dramas_type.name } }
    assert_redirected_to _dramas_type_url(@_dramas_type)
  end

  test "should destroy _dramas_type" do
    assert_difference("DramasType.count", -1) do
      delete _dramas_type_url(@_dramas_type)
    end

    assert_redirected_to _dramas_types_url
  end
end
