require "test_helper"

class DramasSocieteRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_societe_role = _dramas_societe_roles(:one)
  end

  test "should get index" do
    get _dramas_societe_roles_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_societe_role_url
    assert_response :success
  end

  test "should create _dramas_societe_role" do
    assert_difference("DramasSocieteRole.count") do
      post _dramas_societe_roles_url, params: { _dramas_societe_role: { name: @_dramas_societe_role.name } }
    end

    assert_redirected_to _dramas_societe_role_url(DramasSocieteRole.last)
  end

  test "should show _dramas_societe_role" do
    get _dramas_societe_role_url(@_dramas_societe_role)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_societe_role_url(@_dramas_societe_role)
    assert_response :success
  end

  test "should update _dramas_societe_role" do
    patch _dramas_societe_role_url(@_dramas_societe_role), params: { _dramas_societe_role: { name: @_dramas_societe_role.name } }
    assert_redirected_to _dramas_societe_role_url(@_dramas_societe_role)
  end

  test "should destroy _dramas_societe_role" do
    assert_difference("DramasSocieteRole.count", -1) do
      delete _dramas_societe_role_url(@_dramas_societe_role)
    end

    assert_redirected_to _dramas_societe_roles_url
  end
end
