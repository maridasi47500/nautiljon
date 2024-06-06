require "test_helper"

class JeuxVideosStaffSocieteRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_jeux_videos_staff_societe_role = _jeux_videos_staff_societe_roles(:one)
  end

  test "should get index" do
    get _jeux_videos_staff_societe_roles_url
    assert_response :success
  end

  test "should get new" do
    get new__jeux_videos_staff_societe_role_url
    assert_response :success
  end

  test "should create _jeux_videos_staff_societe_role" do
    assert_difference("JeuxVideosStaffSocieteRole.count") do
      post _jeux_videos_staff_societe_roles_url, params: { _jeux_videos_staff_societe_role: { name: @_jeux_videos_staff_societe_role.name } }
    end

    assert_redirected_to _jeux_videos_staff_societe_role_url(JeuxVideosStaffSocieteRole.last)
  end

  test "should show _jeux_videos_staff_societe_role" do
    get _jeux_videos_staff_societe_role_url(@_jeux_videos_staff_societe_role)
    assert_response :success
  end

  test "should get edit" do
    get edit__jeux_videos_staff_societe_role_url(@_jeux_videos_staff_societe_role)
    assert_response :success
  end

  test "should update _jeux_videos_staff_societe_role" do
    patch _jeux_videos_staff_societe_role_url(@_jeux_videos_staff_societe_role), params: { _jeux_videos_staff_societe_role: { name: @_jeux_videos_staff_societe_role.name } }
    assert_redirected_to _jeux_videos_staff_societe_role_url(@_jeux_videos_staff_societe_role)
  end

  test "should destroy _jeux_videos_staff_societe_role" do
    assert_difference("JeuxVideosStaffSocieteRole.count", -1) do
      delete _jeux_videos_staff_societe_role_url(@_jeux_videos_staff_societe_role)
    end

    assert_redirected_to _jeux_videos_staff_societe_roles_url
  end
end
