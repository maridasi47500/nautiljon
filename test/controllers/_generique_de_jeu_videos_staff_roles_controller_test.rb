require "test_helper"

class GeneriqueDeJeuVideosStaffRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_generique_de_jeu_videos_staff_role = _generique_de_jeu_videos_staff_roles(:one)
  end

  test "should get index" do
    get _generique_de_jeu_videos_staff_roles_url
    assert_response :success
  end

  test "should get new" do
    get new__generique_de_jeu_videos_staff_role_url
    assert_response :success
  end

  test "should create _generique_de_jeu_videos_staff_role" do
    assert_difference("GeneriqueDeJeuVideosStaffRole.count") do
      post _generique_de_jeu_videos_staff_roles_url, params: { _generique_de_jeu_videos_staff_role: { name: @_generique_de_jeu_videos_staff_role.name } }
    end

    assert_redirected_to _generique_de_jeu_videos_staff_role_url(GeneriqueDeJeuVideosStaffRole.last)
  end

  test "should show _generique_de_jeu_videos_staff_role" do
    get _generique_de_jeu_videos_staff_role_url(@_generique_de_jeu_videos_staff_role)
    assert_response :success
  end

  test "should get edit" do
    get edit__generique_de_jeu_videos_staff_role_url(@_generique_de_jeu_videos_staff_role)
    assert_response :success
  end

  test "should update _generique_de_jeu_videos_staff_role" do
    patch _generique_de_jeu_videos_staff_role_url(@_generique_de_jeu_videos_staff_role), params: { _generique_de_jeu_videos_staff_role: { name: @_generique_de_jeu_videos_staff_role.name } }
    assert_redirected_to _generique_de_jeu_videos_staff_role_url(@_generique_de_jeu_videos_staff_role)
  end

  test "should destroy _generique_de_jeu_videos_staff_role" do
    assert_difference("GeneriqueDeJeuVideosStaffRole.count", -1) do
      delete _generique_de_jeu_videos_staff_role_url(@_generique_de_jeu_videos_staff_role)
    end

    assert_redirected_to _generique_de_jeu_videos_staff_roles_url
  end
end
