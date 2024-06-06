require "test_helper"

class LightNovelsSocieteRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_light_novels_societe_role = _light_novels_societe_roles(:one)
  end

  test "should get index" do
    get _light_novels_societe_roles_url
    assert_response :success
  end

  test "should get new" do
    get new__light_novels_societe_role_url
    assert_response :success
  end

  test "should create _light_novels_societe_role" do
    assert_difference("LightNovelsSocieteRole.count") do
      post _light_novels_societe_roles_url, params: { _light_novels_societe_role: { name: @_light_novels_societe_role.name } }
    end

    assert_redirected_to _light_novels_societe_role_url(LightNovelsSocieteRole.last)
  end

  test "should show _light_novels_societe_role" do
    get _light_novels_societe_role_url(@_light_novels_societe_role)
    assert_response :success
  end

  test "should get edit" do
    get edit__light_novels_societe_role_url(@_light_novels_societe_role)
    assert_response :success
  end

  test "should update _light_novels_societe_role" do
    patch _light_novels_societe_role_url(@_light_novels_societe_role), params: { _light_novels_societe_role: { name: @_light_novels_societe_role.name } }
    assert_redirected_to _light_novels_societe_role_url(@_light_novels_societe_role)
  end

  test "should destroy _light_novels_societe_role" do
    assert_difference("LightNovelsSocieteRole.count", -1) do
      delete _light_novels_societe_role_url(@_light_novels_societe_role)
    end

    assert_redirected_to _light_novels_societe_roles_url
  end
end
