require "test_helper"

class DoujinshisTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_type = _doujinshis_types(:one)
  end

  test "should get index" do
    get _doujinshis_types_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_type_url
    assert_response :success
  end

  test "should create _doujinshis_type" do
    assert_difference("DoujinshisType.count") do
      post _doujinshis_types_url, params: { _doujinshis_type: { name: @_doujinshis_type.name } }
    end

    assert_redirected_to _doujinshis_type_url(DoujinshisType.last)
  end

  test "should show _doujinshis_type" do
    get _doujinshis_type_url(@_doujinshis_type)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_type_url(@_doujinshis_type)
    assert_response :success
  end

  test "should update _doujinshis_type" do
    patch _doujinshis_type_url(@_doujinshis_type), params: { _doujinshis_type: { name: @_doujinshis_type.name } }
    assert_redirected_to _doujinshis_type_url(@_doujinshis_type)
  end

  test "should destroy _doujinshis_type" do
    assert_difference("DoujinshisType.count", -1) do
      delete _doujinshis_type_url(@_doujinshis_type)
    end

    assert_redirected_to _doujinshis_types_url
  end
end
