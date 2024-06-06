require "test_helper"

class GeneriquesStaffRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_generiques_staff_role = _generiques_staff_roles(:one)
  end

  test "should get index" do
    get _generiques_staff_roles_url
    assert_response :success
  end

  test "should get new" do
    get new__generiques_staff_role_url
    assert_response :success
  end

  test "should create _generiques_staff_role" do
    assert_difference("GeneriquesStaffRole.count") do
      post _generiques_staff_roles_url, params: { _generiques_staff_role: { name: @_generiques_staff_role.name } }
    end

    assert_redirected_to _generiques_staff_role_url(GeneriquesStaffRole.last)
  end

  test "should show _generiques_staff_role" do
    get _generiques_staff_role_url(@_generiques_staff_role)
    assert_response :success
  end

  test "should get edit" do
    get edit__generiques_staff_role_url(@_generiques_staff_role)
    assert_response :success
  end

  test "should update _generiques_staff_role" do
    patch _generiques_staff_role_url(@_generiques_staff_role), params: { _generiques_staff_role: { name: @_generiques_staff_role.name } }
    assert_redirected_to _generiques_staff_role_url(@_generiques_staff_role)
  end

  test "should destroy _generiques_staff_role" do
    assert_difference("GeneriquesStaffRole.count", -1) do
      delete _generiques_staff_role_url(@_generiques_staff_role)
    end

    assert_redirected_to _generiques_staff_roles_url
  end
end
