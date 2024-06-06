require "test_helper"

class AnimesSocieteRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_societe_role = animes_societe_roles(:one)
  end

  test "should get index" do
    get animes_societe_roles_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_societe_role_url
    assert_response :success
  end

  test "should create animes_societe_role" do
    assert_difference("AnimesSocieteRole.count") do
      post animes_societe_roles_url, params: { animes_societe_role: { name: @animes_societe_role.name } }
    end

    assert_redirected_to animes_societe_role_url(AnimesSocieteRole.last)
  end

  test "should show animes_societe_role" do
    get animes_societe_role_url(@animes_societe_role)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_societe_role_url(@animes_societe_role)
    assert_response :success
  end

  test "should update animes_societe_role" do
    patch animes_societe_role_url(@animes_societe_role), params: { animes_societe_role: { name: @animes_societe_role.name } }
    assert_redirected_to animes_societe_role_url(@animes_societe_role)
  end

  test "should destroy animes_societe_role" do
    assert_difference("AnimesSocieteRole.count", -1) do
      delete animes_societe_role_url(@animes_societe_role)
    end

    assert_redirected_to animes_societe_roles_url
  end
end
