require "test_helper"

class PersonnalitesRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnalites_role = _personnalites_roles(:one)
  end

  test "should get index" do
    get _personnalites_roles_url
    assert_response :success
  end

  test "should get new" do
    get new__personnalites_role_url
    assert_response :success
  end

  test "should create _personnalites_role" do
    assert_difference("PersonnalitesRole.count") do
      post _personnalites_roles_url, params: { _personnalites_role: { name: @_personnalites_role.name } }
    end

    assert_redirected_to _personnalites_role_url(PersonnalitesRole.last)
  end

  test "should show _personnalites_role" do
    get _personnalites_role_url(@_personnalites_role)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnalites_role_url(@_personnalites_role)
    assert_response :success
  end

  test "should update _personnalites_role" do
    patch _personnalites_role_url(@_personnalites_role), params: { _personnalites_role: { name: @_personnalites_role.name } }
    assert_redirected_to _personnalites_role_url(@_personnalites_role)
  end

  test "should destroy _personnalites_role" do
    assert_difference("PersonnalitesRole.count", -1) do
      delete _personnalites_role_url(@_personnalites_role)
    end

    assert_redirected_to _personnalites_roles_url
  end
end
