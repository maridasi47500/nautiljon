require "test_helper"

class GoodiesStaffRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_staff_role = _goodies_staff_roles(:one)
  end

  test "should get index" do
    get _goodies_staff_roles_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_staff_role_url
    assert_response :success
  end

  test "should create _goodies_staff_role" do
    assert_difference("GoodiesStaffRole.count") do
      post _goodies_staff_roles_url, params: { _goodies_staff_role: { name: @_goodies_staff_role.name } }
    end

    assert_redirected_to _goodies_staff_role_url(GoodiesStaffRole.last)
  end

  test "should show _goodies_staff_role" do
    get _goodies_staff_role_url(@_goodies_staff_role)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_staff_role_url(@_goodies_staff_role)
    assert_response :success
  end

  test "should update _goodies_staff_role" do
    patch _goodies_staff_role_url(@_goodies_staff_role), params: { _goodies_staff_role: { name: @_goodies_staff_role.name } }
    assert_redirected_to _goodies_staff_role_url(@_goodies_staff_role)
  end

  test "should destroy _goodies_staff_role" do
    assert_difference("GoodiesStaffRole.count", -1) do
      delete _goodies_staff_role_url(@_goodies_staff_role)
    end

    assert_redirected_to _goodies_staff_roles_url
  end
end
