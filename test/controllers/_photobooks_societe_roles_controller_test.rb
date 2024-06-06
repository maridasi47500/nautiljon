require "test_helper"

class PhotobooksSocieteRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_photobooks_societe_role = _photobooks_societe_roles(:one)
  end

  test "should get index" do
    get _photobooks_societe_roles_url
    assert_response :success
  end

  test "should get new" do
    get new__photobooks_societe_role_url
    assert_response :success
  end

  test "should create _photobooks_societe_role" do
    assert_difference("PhotobooksSocieteRole.count") do
      post _photobooks_societe_roles_url, params: { _photobooks_societe_role: { name: @_photobooks_societe_role.name } }
    end

    assert_redirected_to _photobooks_societe_role_url(PhotobooksSocieteRole.last)
  end

  test "should show _photobooks_societe_role" do
    get _photobooks_societe_role_url(@_photobooks_societe_role)
    assert_response :success
  end

  test "should get edit" do
    get edit__photobooks_societe_role_url(@_photobooks_societe_role)
    assert_response :success
  end

  test "should update _photobooks_societe_role" do
    patch _photobooks_societe_role_url(@_photobooks_societe_role), params: { _photobooks_societe_role: { name: @_photobooks_societe_role.name } }
    assert_redirected_to _photobooks_societe_role_url(@_photobooks_societe_role)
  end

  test "should destroy _photobooks_societe_role" do
    assert_difference("PhotobooksSocieteRole.count", -1) do
      delete _photobooks_societe_role_url(@_photobooks_societe_role)
    end

    assert_redirected_to _photobooks_societe_roles_url
  end
end
