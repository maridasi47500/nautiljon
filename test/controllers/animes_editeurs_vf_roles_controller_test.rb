require "test_helper"

class AnimesEditeursVfRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_editeurs_vf_role = animes_editeurs_vf_roles(:one)
  end

  test "should get index" do
    get animes_editeurs_vf_roles_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_editeurs_vf_role_url
    assert_response :success
  end

  test "should create animes_editeurs_vf_role" do
    assert_difference("AnimesEditeursVfRole.count") do
      post animes_editeurs_vf_roles_url, params: { animes_editeurs_vf_role: { name: @animes_editeurs_vf_role.name } }
    end

    assert_redirected_to animes_editeurs_vf_role_url(AnimesEditeursVfRole.last)
  end

  test "should show animes_editeurs_vf_role" do
    get animes_editeurs_vf_role_url(@animes_editeurs_vf_role)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_editeurs_vf_role_url(@animes_editeurs_vf_role)
    assert_response :success
  end

  test "should update animes_editeurs_vf_role" do
    patch animes_editeurs_vf_role_url(@animes_editeurs_vf_role), params: { animes_editeurs_vf_role: { name: @animes_editeurs_vf_role.name } }
    assert_redirected_to animes_editeurs_vf_role_url(@animes_editeurs_vf_role)
  end

  test "should destroy animes_editeurs_vf_role" do
    assert_difference("AnimesEditeursVfRole.count", -1) do
      delete animes_editeurs_vf_role_url(@animes_editeurs_vf_role)
    end

    assert_redirected_to animes_editeurs_vf_roles_url
  end
end
