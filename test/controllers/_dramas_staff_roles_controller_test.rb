require "test_helper"

class DramasStaffRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_staff_role = _dramas_staff_roles(:one)
  end

  test "should get index" do
    get _dramas_staff_roles_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_staff_role_url
    assert_response :success
  end

  test "should create _dramas_staff_role" do
    assert_difference("DramasStaffRole.count") do
      post _dramas_staff_roles_url, params: { _dramas_staff_role: { name: @_dramas_staff_role.name } }
    end

    assert_redirected_to _dramas_staff_role_url(DramasStaffRole.last)
  end

  test "should show _dramas_staff_role" do
    get _dramas_staff_role_url(@_dramas_staff_role)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_staff_role_url(@_dramas_staff_role)
    assert_response :success
  end

  test "should update _dramas_staff_role" do
    patch _dramas_staff_role_url(@_dramas_staff_role), params: { _dramas_staff_role: { name: @_dramas_staff_role.name } }
    assert_redirected_to _dramas_staff_role_url(@_dramas_staff_role)
  end

  test "should destroy _dramas_staff_role" do
    assert_difference("DramasStaffRole.count", -1) do
      delete _dramas_staff_role_url(@_dramas_staff_role)
    end

    assert_redirected_to _dramas_staff_roles_url
  end
end
