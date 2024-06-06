require "test_helper"

class PhotobooksRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_photobooks_role = _photobooks_roles(:one)
  end

  test "should get index" do
    get _photobooks_roles_url
    assert_response :success
  end

  test "should get new" do
    get new__photobooks_role_url
    assert_response :success
  end

  test "should create _photobooks_role" do
    assert_difference("PhotobooksRole.count") do
      post _photobooks_roles_url, params: { _photobooks_role: { name: @_photobooks_role.name } }
    end

    assert_redirected_to _photobooks_role_url(PhotobooksRole.last)
  end

  test "should show _photobooks_role" do
    get _photobooks_role_url(@_photobooks_role)
    assert_response :success
  end

  test "should get edit" do
    get edit__photobooks_role_url(@_photobooks_role)
    assert_response :success
  end

  test "should update _photobooks_role" do
    patch _photobooks_role_url(@_photobooks_role), params: { _photobooks_role: { name: @_photobooks_role.name } }
    assert_redirected_to _photobooks_role_url(@_photobooks_role)
  end

  test "should destroy _photobooks_role" do
    assert_difference("PhotobooksRole.count", -1) do
      delete _photobooks_role_url(@_photobooks_role)
    end

    assert_redirected_to _photobooks_roles_url
  end
end
