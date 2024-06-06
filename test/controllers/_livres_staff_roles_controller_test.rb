require "test_helper"

class LivresStaffRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_livres_staff_role = _livres_staff_roles(:one)
  end

  test "should get index" do
    get _livres_staff_roles_url
    assert_response :success
  end

  test "should get new" do
    get new__livres_staff_role_url
    assert_response :success
  end

  test "should create _livres_staff_role" do
    assert_difference("LivresStaffRole.count") do
      post _livres_staff_roles_url, params: { _livres_staff_role: { name: @_livres_staff_role.name } }
    end

    assert_redirected_to _livres_staff_role_url(LivresStaffRole.last)
  end

  test "should show _livres_staff_role" do
    get _livres_staff_role_url(@_livres_staff_role)
    assert_response :success
  end

  test "should get edit" do
    get edit__livres_staff_role_url(@_livres_staff_role)
    assert_response :success
  end

  test "should update _livres_staff_role" do
    patch _livres_staff_role_url(@_livres_staff_role), params: { _livres_staff_role: { name: @_livres_staff_role.name } }
    assert_redirected_to _livres_staff_role_url(@_livres_staff_role)
  end

  test "should destroy _livres_staff_role" do
    assert_difference("LivresStaffRole.count", -1) do
      delete _livres_staff_role_url(@_livres_staff_role)
    end

    assert_redirected_to _livres_staff_roles_url
  end
end
