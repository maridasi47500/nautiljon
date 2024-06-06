require "test_helper"

class DramasGeneriquesTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_generiques_type = _dramas_generiques_types(:one)
  end

  test "should get index" do
    get _dramas_generiques_types_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_generiques_type_url
    assert_response :success
  end

  test "should create _dramas_generiques_type" do
    assert_difference("DramasGeneriquesType.count") do
      post _dramas_generiques_types_url, params: { _dramas_generiques_type: { name: @_dramas_generiques_type.name } }
    end

    assert_redirected_to _dramas_generiques_type_url(DramasGeneriquesType.last)
  end

  test "should show _dramas_generiques_type" do
    get _dramas_generiques_type_url(@_dramas_generiques_type)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_generiques_type_url(@_dramas_generiques_type)
    assert_response :success
  end

  test "should update _dramas_generiques_type" do
    patch _dramas_generiques_type_url(@_dramas_generiques_type), params: { _dramas_generiques_type: { name: @_dramas_generiques_type.name } }
    assert_redirected_to _dramas_generiques_type_url(@_dramas_generiques_type)
  end

  test "should destroy _dramas_generiques_type" do
    assert_difference("DramasGeneriquesType.count", -1) do
      delete _dramas_generiques_type_url(@_dramas_generiques_type)
    end

    assert_redirected_to _dramas_generiques_types_url
  end
end
