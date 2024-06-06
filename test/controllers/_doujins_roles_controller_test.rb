require "test_helper"

class DoujinsRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujins_role = _doujins_roles(:one)
  end

  test "should get index" do
    get _doujins_roles_url
    assert_response :success
  end

  test "should get new" do
    get new__doujins_role_url
    assert_response :success
  end

  test "should create _doujins_role" do
    assert_difference("DoujinsRole.count") do
      post _doujins_roles_url, params: { _doujins_role: { name: @_doujins_role.name } }
    end

    assert_redirected_to _doujins_role_url(DoujinsRole.last)
  end

  test "should show _doujins_role" do
    get _doujins_role_url(@_doujins_role)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujins_role_url(@_doujins_role)
    assert_response :success
  end

  test "should update _doujins_role" do
    patch _doujins_role_url(@_doujins_role), params: { _doujins_role: { name: @_doujins_role.name } }
    assert_redirected_to _doujins_role_url(@_doujins_role)
  end

  test "should destroy _doujins_role" do
    assert_difference("DoujinsRole.count", -1) do
      delete _doujins_role_url(@_doujins_role)
    end

    assert_redirected_to _doujins_roles_url
  end
end
