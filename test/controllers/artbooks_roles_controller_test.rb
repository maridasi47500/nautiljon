require "test_helper"

class ArtbooksRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artbooks_role = artbooks_roles(:one)
  end

  test "should get index" do
    get artbooks_roles_url
    assert_response :success
  end

  test "should get new" do
    get new_artbooks_role_url
    assert_response :success
  end

  test "should create artbooks_role" do
    assert_difference("ArtbooksRole.count") do
      post artbooks_roles_url, params: { artbooks_role: { name: @artbooks_role.name } }
    end

    assert_redirected_to artbooks_role_url(ArtbooksRole.last)
  end

  test "should show artbooks_role" do
    get artbooks_role_url(@artbooks_role)
    assert_response :success
  end

  test "should get edit" do
    get edit_artbooks_role_url(@artbooks_role)
    assert_response :success
  end

  test "should update artbooks_role" do
    patch artbooks_role_url(@artbooks_role), params: { artbooks_role: { name: @artbooks_role.name } }
    assert_redirected_to artbooks_role_url(@artbooks_role)
  end

  test "should destroy artbooks_role" do
    assert_difference("ArtbooksRole.count", -1) do
      delete artbooks_role_url(@artbooks_role)
    end

    assert_redirected_to artbooks_roles_url
  end
end
