require "test_helper"

class CdsRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_cds_role = _cds_roles(:one)
  end

  test "should get index" do
    get _cds_roles_url
    assert_response :success
  end

  test "should get new" do
    get new__cds_role_url
    assert_response :success
  end

  test "should create _cds_role" do
    assert_difference("CdsRole.count") do
      post _cds_roles_url, params: { _cds_role: { name: @_cds_role.name } }
    end

    assert_redirected_to _cds_role_url(CdsRole.last)
  end

  test "should show _cds_role" do
    get _cds_role_url(@_cds_role)
    assert_response :success
  end

  test "should get edit" do
    get edit__cds_role_url(@_cds_role)
    assert_response :success
  end

  test "should update _cds_role" do
    patch _cds_role_url(@_cds_role), params: { _cds_role: { name: @_cds_role.name } }
    assert_redirected_to _cds_role_url(@_cds_role)
  end

  test "should destroy _cds_role" do
    assert_difference("CdsRole.count", -1) do
      delete _cds_role_url(@_cds_role)
    end

    assert_redirected_to _cds_roles_url
  end
end
