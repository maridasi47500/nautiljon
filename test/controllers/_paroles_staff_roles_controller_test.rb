require "test_helper"

class ParolesStaffRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_paroles_staff_role = _paroles_staff_roles(:one)
  end

  test "should get index" do
    get _paroles_staff_roles_url
    assert_response :success
  end

  test "should get new" do
    get new__paroles_staff_role_url
    assert_response :success
  end

  test "should create _paroles_staff_role" do
    assert_difference("ParolesStaffRole.count") do
      post _paroles_staff_roles_url, params: { _paroles_staff_role: { name: @_paroles_staff_role.name } }
    end

    assert_redirected_to _paroles_staff_role_url(ParolesStaffRole.last)
  end

  test "should show _paroles_staff_role" do
    get _paroles_staff_role_url(@_paroles_staff_role)
    assert_response :success
  end

  test "should get edit" do
    get edit__paroles_staff_role_url(@_paroles_staff_role)
    assert_response :success
  end

  test "should update _paroles_staff_role" do
    patch _paroles_staff_role_url(@_paroles_staff_role), params: { _paroles_staff_role: { name: @_paroles_staff_role.name } }
    assert_redirected_to _paroles_staff_role_url(@_paroles_staff_role)
  end

  test "should destroy _paroles_staff_role" do
    assert_difference("ParolesStaffRole.count", -1) do
      delete _paroles_staff_role_url(@_paroles_staff_role)
    end

    assert_redirected_to _paroles_staff_roles_url
  end
end
