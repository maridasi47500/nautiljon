require "test_helper"

class ArtbooksSocieteRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artbooks_societe_role = artbooks_societe_roles(:one)
  end

  test "should get index" do
    get artbooks_societe_roles_url
    assert_response :success
  end

  test "should get new" do
    get new_artbooks_societe_role_url
    assert_response :success
  end

  test "should create artbooks_societe_role" do
    assert_difference("ArtbooksSocieteRole.count") do
      post artbooks_societe_roles_url, params: { artbooks_societe_role: { name: @artbooks_societe_role.name } }
    end

    assert_redirected_to artbooks_societe_role_url(ArtbooksSocieteRole.last)
  end

  test "should show artbooks_societe_role" do
    get artbooks_societe_role_url(@artbooks_societe_role)
    assert_response :success
  end

  test "should get edit" do
    get edit_artbooks_societe_role_url(@artbooks_societe_role)
    assert_response :success
  end

  test "should update artbooks_societe_role" do
    patch artbooks_societe_role_url(@artbooks_societe_role), params: { artbooks_societe_role: { name: @artbooks_societe_role.name } }
    assert_redirected_to artbooks_societe_role_url(@artbooks_societe_role)
  end

  test "should destroy artbooks_societe_role" do
    assert_difference("ArtbooksSocieteRole.count", -1) do
      delete artbooks_societe_role_url(@artbooks_societe_role)
    end

    assert_redirected_to artbooks_societe_roles_url
  end
end
