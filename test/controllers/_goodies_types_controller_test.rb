require "test_helper"

class GoodiesTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_type = _goodies_types(:one)
  end

  test "should get index" do
    get _goodies_types_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_type_url
    assert_response :success
  end

  test "should create _goodies_type" do
    assert_difference("GoodiesType.count") do
      post _goodies_types_url, params: { _goodies_type: { name: @_goodies_type.name } }
    end

    assert_redirected_to _goodies_type_url(GoodiesType.last)
  end

  test "should show _goodies_type" do
    get _goodies_type_url(@_goodies_type)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_type_url(@_goodies_type)
    assert_response :success
  end

  test "should update _goodies_type" do
    patch _goodies_type_url(@_goodies_type), params: { _goodies_type: { name: @_goodies_type.name } }
    assert_redirected_to _goodies_type_url(@_goodies_type)
  end

  test "should destroy _goodies_type" do
    assert_difference("GoodiesType.count", -1) do
      delete _goodies_type_url(@_goodies_type)
    end

    assert_redirected_to _goodies_types_url
  end
end
