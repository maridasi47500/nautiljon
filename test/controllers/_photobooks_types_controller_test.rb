require "test_helper"

class PhotobooksTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_photobooks_type = _photobooks_types(:one)
  end

  test "should get index" do
    get _photobooks_types_url
    assert_response :success
  end

  test "should get new" do
    get new__photobooks_type_url
    assert_response :success
  end

  test "should create _photobooks_type" do
    assert_difference("PhotobooksType.count") do
      post _photobooks_types_url, params: { _photobooks_type: { name: @_photobooks_type.name } }
    end

    assert_redirected_to _photobooks_type_url(PhotobooksType.last)
  end

  test "should show _photobooks_type" do
    get _photobooks_type_url(@_photobooks_type)
    assert_response :success
  end

  test "should get edit" do
    get edit__photobooks_type_url(@_photobooks_type)
    assert_response :success
  end

  test "should update _photobooks_type" do
    patch _photobooks_type_url(@_photobooks_type), params: { _photobooks_type: { name: @_photobooks_type.name } }
    assert_redirected_to _photobooks_type_url(@_photobooks_type)
  end

  test "should destroy _photobooks_type" do
    assert_difference("PhotobooksType.count", -1) do
      delete _photobooks_type_url(@_photobooks_type)
    end

    assert_redirected_to _photobooks_types_url
  end
end
