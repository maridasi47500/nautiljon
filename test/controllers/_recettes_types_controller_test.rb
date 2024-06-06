require "test_helper"

class RecettesTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_recettes_type = _recettes_types(:one)
  end

  test "should get index" do
    get _recettes_types_url
    assert_response :success
  end

  test "should get new" do
    get new__recettes_type_url
    assert_response :success
  end

  test "should create _recettes_type" do
    assert_difference("RecettesType.count") do
      post _recettes_types_url, params: { _recettes_type: { name: @_recettes_type.name } }
    end

    assert_redirected_to _recettes_type_url(RecettesType.last)
  end

  test "should show _recettes_type" do
    get _recettes_type_url(@_recettes_type)
    assert_response :success
  end

  test "should get edit" do
    get edit__recettes_type_url(@_recettes_type)
    assert_response :success
  end

  test "should update _recettes_type" do
    patch _recettes_type_url(@_recettes_type), params: { _recettes_type: { name: @_recettes_type.name } }
    assert_redirected_to _recettes_type_url(@_recettes_type)
  end

  test "should destroy _recettes_type" do
    assert_difference("RecettesType.count", -1) do
      delete _recettes_type_url(@_recettes_type)
    end

    assert_redirected_to _recettes_types_url
  end
end
