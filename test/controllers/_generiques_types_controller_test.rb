require "test_helper"

class GeneriquesTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_generiques_type = _generiques_types(:one)
  end

  test "should get index" do
    get _generiques_types_url
    assert_response :success
  end

  test "should get new" do
    get new__generiques_type_url
    assert_response :success
  end

  test "should create _generiques_type" do
    assert_difference("GeneriquesType.count") do
      post _generiques_types_url, params: { _generiques_type: { name: @_generiques_type.name } }
    end

    assert_redirected_to _generiques_type_url(GeneriquesType.last)
  end

  test "should show _generiques_type" do
    get _generiques_type_url(@_generiques_type)
    assert_response :success
  end

  test "should get edit" do
    get edit__generiques_type_url(@_generiques_type)
    assert_response :success
  end

  test "should update _generiques_type" do
    patch _generiques_type_url(@_generiques_type), params: { _generiques_type: { name: @_generiques_type.name } }
    assert_redirected_to _generiques_type_url(@_generiques_type)
  end

  test "should destroy _generiques_type" do
    assert_difference("GeneriquesType.count", -1) do
      delete _generiques_type_url(@_generiques_type)
    end

    assert_redirected_to _generiques_types_url
  end
end
