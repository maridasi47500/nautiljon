require "test_helper"

class DramasEditeursVfRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_editeurs_vf_role = _dramas_editeurs_vf_roles(:one)
  end

  test "should get index" do
    get _dramas_editeurs_vf_roles_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_editeurs_vf_role_url
    assert_response :success
  end

  test "should create _dramas_editeurs_vf_role" do
    assert_difference("DramasEditeursVfRole.count") do
      post _dramas_editeurs_vf_roles_url, params: { _dramas_editeurs_vf_role: { name: @_dramas_editeurs_vf_role.name } }
    end

    assert_redirected_to _dramas_editeurs_vf_role_url(DramasEditeursVfRole.last)
  end

  test "should show _dramas_editeurs_vf_role" do
    get _dramas_editeurs_vf_role_url(@_dramas_editeurs_vf_role)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_editeurs_vf_role_url(@_dramas_editeurs_vf_role)
    assert_response :success
  end

  test "should update _dramas_editeurs_vf_role" do
    patch _dramas_editeurs_vf_role_url(@_dramas_editeurs_vf_role), params: { _dramas_editeurs_vf_role: { name: @_dramas_editeurs_vf_role.name } }
    assert_redirected_to _dramas_editeurs_vf_role_url(@_dramas_editeurs_vf_role)
  end

  test "should destroy _dramas_editeurs_vf_role" do
    assert_difference("DramasEditeursVfRole.count", -1) do
      delete _dramas_editeurs_vf_role_url(@_dramas_editeurs_vf_role)
    end

    assert_redirected_to _dramas_editeurs_vf_roles_url
  end
end
