require "test_helper"

class CdsTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_cds_type = _cds_types(:one)
  end

  test "should get index" do
    get _cds_types_url
    assert_response :success
  end

  test "should get new" do
    get new__cds_type_url
    assert_response :success
  end

  test "should create _cds_type" do
    assert_difference("CdsType.count") do
      post _cds_types_url, params: { _cds_type: { name: @_cds_type.name } }
    end

    assert_redirected_to _cds_type_url(CdsType.last)
  end

  test "should show _cds_type" do
    get _cds_type_url(@_cds_type)
    assert_response :success
  end

  test "should get edit" do
    get edit__cds_type_url(@_cds_type)
    assert_response :success
  end

  test "should update _cds_type" do
    patch _cds_type_url(@_cds_type), params: { _cds_type: { name: @_cds_type.name } }
    assert_redirected_to _cds_type_url(@_cds_type)
  end

  test "should destroy _cds_type" do
    assert_difference("CdsType.count", -1) do
      delete _cds_type_url(@_cds_type)
    end

    assert_redirected_to _cds_types_url
  end
end
