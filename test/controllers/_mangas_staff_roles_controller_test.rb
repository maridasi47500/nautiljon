require "test_helper"

class MangasStaffRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_staff_role = _mangas_staff_roles(:one)
  end

  test "should get index" do
    get _mangas_staff_roles_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_staff_role_url
    assert_response :success
  end

  test "should create _mangas_staff_role" do
    assert_difference("MangasStaffRole.count") do
      post _mangas_staff_roles_url, params: { _mangas_staff_role: { name: @_mangas_staff_role.name } }
    end

    assert_redirected_to _mangas_staff_role_url(MangasStaffRole.last)
  end

  test "should show _mangas_staff_role" do
    get _mangas_staff_role_url(@_mangas_staff_role)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_staff_role_url(@_mangas_staff_role)
    assert_response :success
  end

  test "should update _mangas_staff_role" do
    patch _mangas_staff_role_url(@_mangas_staff_role), params: { _mangas_staff_role: { name: @_mangas_staff_role.name } }
    assert_redirected_to _mangas_staff_role_url(@_mangas_staff_role)
  end

  test "should destroy _mangas_staff_role" do
    assert_difference("MangasStaffRole.count", -1) do
      delete _mangas_staff_role_url(@_mangas_staff_role)
    end

    assert_redirected_to _mangas_staff_roles_url
  end
end
