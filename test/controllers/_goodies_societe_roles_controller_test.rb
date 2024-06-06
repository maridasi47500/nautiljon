require "test_helper"

class GoodiesSocieteRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_goodies_societe_role = _goodies_societe_roles(:one)
  end

  test "should get index" do
    get _goodies_societe_roles_url
    assert_response :success
  end

  test "should get new" do
    get new__goodies_societe_role_url
    assert_response :success
  end

  test "should create _goodies_societe_role" do
    assert_difference("GoodiesSocieteRole.count") do
      post _goodies_societe_roles_url, params: { _goodies_societe_role: { name: @_goodies_societe_role.name } }
    end

    assert_redirected_to _goodies_societe_role_url(GoodiesSocieteRole.last)
  end

  test "should show _goodies_societe_role" do
    get _goodies_societe_role_url(@_goodies_societe_role)
    assert_response :success
  end

  test "should get edit" do
    get edit__goodies_societe_role_url(@_goodies_societe_role)
    assert_response :success
  end

  test "should update _goodies_societe_role" do
    patch _goodies_societe_role_url(@_goodies_societe_role), params: { _goodies_societe_role: { name: @_goodies_societe_role.name } }
    assert_redirected_to _goodies_societe_role_url(@_goodies_societe_role)
  end

  test "should destroy _goodies_societe_role" do
    assert_difference("GoodiesSocieteRole.count", -1) do
      delete _goodies_societe_role_url(@_goodies_societe_role)
    end

    assert_redirected_to _goodies_societe_roles_url
  end
end
