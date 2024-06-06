require "test_helper"

class FilmsAsiatiquesEditeursVfRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_editeurs_vf_role = _films_asiatiques_editeurs_vf_roles(:one)
  end

  test "should get index" do
    get _films_asiatiques_editeurs_vf_roles_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_editeurs_vf_role_url
    assert_response :success
  end

  test "should create _films_asiatiques_editeurs_vf_role" do
    assert_difference("FilmsAsiatiquesEditeursVfRole.count") do
      post _films_asiatiques_editeurs_vf_roles_url, params: { _films_asiatiques_editeurs_vf_role: { name: @_films_asiatiques_editeurs_vf_role.name } }
    end

    assert_redirected_to _films_asiatiques_editeurs_vf_role_url(FilmsAsiatiquesEditeursVfRole.last)
  end

  test "should show _films_asiatiques_editeurs_vf_role" do
    get _films_asiatiques_editeurs_vf_role_url(@_films_asiatiques_editeurs_vf_role)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_editeurs_vf_role_url(@_films_asiatiques_editeurs_vf_role)
    assert_response :success
  end

  test "should update _films_asiatiques_editeurs_vf_role" do
    patch _films_asiatiques_editeurs_vf_role_url(@_films_asiatiques_editeurs_vf_role), params: { _films_asiatiques_editeurs_vf_role: { name: @_films_asiatiques_editeurs_vf_role.name } }
    assert_redirected_to _films_asiatiques_editeurs_vf_role_url(@_films_asiatiques_editeurs_vf_role)
  end

  test "should destroy _films_asiatiques_editeurs_vf_role" do
    assert_difference("FilmsAsiatiquesEditeursVfRole.count", -1) do
      delete _films_asiatiques_editeurs_vf_role_url(@_films_asiatiques_editeurs_vf_role)
    end

    assert_redirected_to _films_asiatiques_editeurs_vf_roles_url
  end
end
