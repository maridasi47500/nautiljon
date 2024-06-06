require "test_helper"

class VolumesTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_volumes_type = _volumes_types(:one)
  end

  test "should get index" do
    get _volumes_types_url
    assert_response :success
  end

  test "should get new" do
    get new__volumes_type_url
    assert_response :success
  end

  test "should create _volumes_type" do
    assert_difference("VolumesType.count") do
      post _volumes_types_url, params: { _volumes_type: { name: @_volumes_type.name } }
    end

    assert_redirected_to _volumes_type_url(VolumesType.last)
  end

  test "should show _volumes_type" do
    get _volumes_type_url(@_volumes_type)
    assert_response :success
  end

  test "should get edit" do
    get edit__volumes_type_url(@_volumes_type)
    assert_response :success
  end

  test "should update _volumes_type" do
    patch _volumes_type_url(@_volumes_type), params: { _volumes_type: { name: @_volumes_type.name } }
    assert_redirected_to _volumes_type_url(@_volumes_type)
  end

  test "should destroy _volumes_type" do
    assert_difference("VolumesType.count", -1) do
      delete _volumes_type_url(@_volumes_type)
    end

    assert_redirected_to _volumes_types_url
  end
end
