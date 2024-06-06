require "test_helper"

class MangasSocieteRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_mangas_societe_role = _mangas_societe_roles(:one)
  end

  test "should get index" do
    get _mangas_societe_roles_url
    assert_response :success
  end

  test "should get new" do
    get new__mangas_societe_role_url
    assert_response :success
  end

  test "should create _mangas_societe_role" do
    assert_difference("MangasSocieteRole.count") do
      post _mangas_societe_roles_url, params: { _mangas_societe_role: { name: @_mangas_societe_role.name } }
    end

    assert_redirected_to _mangas_societe_role_url(MangasSocieteRole.last)
  end

  test "should show _mangas_societe_role" do
    get _mangas_societe_role_url(@_mangas_societe_role)
    assert_response :success
  end

  test "should get edit" do
    get edit__mangas_societe_role_url(@_mangas_societe_role)
    assert_response :success
  end

  test "should update _mangas_societe_role" do
    patch _mangas_societe_role_url(@_mangas_societe_role), params: { _mangas_societe_role: { name: @_mangas_societe_role.name } }
    assert_redirected_to _mangas_societe_role_url(@_mangas_societe_role)
  end

  test "should destroy _mangas_societe_role" do
    assert_difference("MangasSocieteRole.count", -1) do
      delete _mangas_societe_role_url(@_mangas_societe_role)
    end

    assert_redirected_to _mangas_societe_roles_url
  end
end
