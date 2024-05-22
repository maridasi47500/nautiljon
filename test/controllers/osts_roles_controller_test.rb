require "test_helper"

class OstsRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @osts_role = osts_roles(:one)
  end

  test "should get index" do
    get osts_roles_url
    assert_response :success
  end

  test "should get new" do
    get new_osts_role_url
    assert_response :success
  end

  test "should create osts_role" do
    assert_difference("OstsRole.count") do
      post osts_roles_url, params: { osts_role: { name: @osts_role.name } }
    end

    assert_redirected_to osts_role_url(OstsRole.last)
  end

  test "should show osts_role" do
    get osts_role_url(@osts_role)
    assert_response :success
  end

  test "should get edit" do
    get edit_osts_role_url(@osts_role)
    assert_response :success
  end

  test "should update osts_role" do
    patch osts_role_url(@osts_role), params: { osts_role: { name: @osts_role.name } }
    assert_redirected_to osts_role_url(@osts_role)
  end

  test "should destroy osts_role" do
    assert_difference("OstsRole.count", -1) do
      delete osts_role_url(@osts_role)
    end

    assert_redirected_to osts_roles_url
  end
end
