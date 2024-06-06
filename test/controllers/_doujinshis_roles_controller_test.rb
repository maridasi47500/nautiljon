require "test_helper"

class DoujinshisRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_doujinshis_role = _doujinshis_roles(:one)
  end

  test "should get index" do
    get _doujinshis_roles_url
    assert_response :success
  end

  test "should get new" do
    get new__doujinshis_role_url
    assert_response :success
  end

  test "should create _doujinshis_role" do
    assert_difference("DoujinshisRole.count") do
      post _doujinshis_roles_url, params: { _doujinshis_role: { name: @_doujinshis_role.name } }
    end

    assert_redirected_to _doujinshis_role_url(DoujinshisRole.last)
  end

  test "should show _doujinshis_role" do
    get _doujinshis_role_url(@_doujinshis_role)
    assert_response :success
  end

  test "should get edit" do
    get edit__doujinshis_role_url(@_doujinshis_role)
    assert_response :success
  end

  test "should update _doujinshis_role" do
    patch _doujinshis_role_url(@_doujinshis_role), params: { _doujinshis_role: { name: @_doujinshis_role.name } }
    assert_redirected_to _doujinshis_role_url(@_doujinshis_role)
  end

  test "should destroy _doujinshis_role" do
    assert_difference("DoujinshisRole.count", -1) do
      delete _doujinshis_role_url(@_doujinshis_role)
    end

    assert_redirected_to _doujinshis_roles_url
  end
end
