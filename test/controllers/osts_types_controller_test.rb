require "test_helper"

class OstsTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @osts_type = osts_types(:one)
  end

  test "should get index" do
    get osts_types_url
    assert_response :success
  end

  test "should get new" do
    get new_osts_type_url
    assert_response :success
  end

  test "should create osts_type" do
    assert_difference("OstsType.count") do
      post osts_types_url, params: { osts_type: { name: @osts_type.name } }
    end

    assert_redirected_to osts_type_url(OstsType.last)
  end

  test "should show osts_type" do
    get osts_type_url(@osts_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_osts_type_url(@osts_type)
    assert_response :success
  end

  test "should update osts_type" do
    patch osts_type_url(@osts_type), params: { osts_type: { name: @osts_type.name } }
    assert_redirected_to osts_type_url(@osts_type)
  end

  test "should destroy osts_type" do
    assert_difference("OstsType.count", -1) do
      delete osts_type_url(@osts_type)
    end

    assert_redirected_to osts_types_url
  end
end
