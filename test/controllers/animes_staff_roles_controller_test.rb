require "test_helper"

class AnimesStaffRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animes_staff_role = animes_staff_roles(:one)
  end

  test "should get index" do
    get animes_staff_roles_url
    assert_response :success
  end

  test "should get new" do
    get new_animes_staff_role_url
    assert_response :success
  end

  test "should create animes_staff_role" do
    assert_difference("AnimesStaffRole.count") do
      post animes_staff_roles_url, params: { animes_staff_role: { name: @animes_staff_role.name } }
    end

    assert_redirected_to animes_staff_role_url(AnimesStaffRole.last)
  end

  test "should show animes_staff_role" do
    get animes_staff_role_url(@animes_staff_role)
    assert_response :success
  end

  test "should get edit" do
    get edit_animes_staff_role_url(@animes_staff_role)
    assert_response :success
  end

  test "should update animes_staff_role" do
    patch animes_staff_role_url(@animes_staff_role), params: { animes_staff_role: { name: @animes_staff_role.name } }
    assert_redirected_to animes_staff_role_url(@animes_staff_role)
  end

  test "should destroy animes_staff_role" do
    assert_difference("AnimesStaffRole.count", -1) do
      delete animes_staff_role_url(@animes_staff_role)
    end

    assert_redirected_to animes_staff_roles_url
  end
end
