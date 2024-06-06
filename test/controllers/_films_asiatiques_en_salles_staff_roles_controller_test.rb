require "test_helper"

class FilmsAsiatiquesEnSallesStaffRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_films_asiatiques_en_salles_staff_role = _films_asiatiques_en_salles_staff_roles(:one)
  end

  test "should get index" do
    get _films_asiatiques_en_salles_staff_roles_url
    assert_response :success
  end

  test "should get new" do
    get new__films_asiatiques_en_salles_staff_role_url
    assert_response :success
  end

  test "should create _films_asiatiques_en_salles_staff_role" do
    assert_difference("FilmsAsiatiquesEnSallesStaffRole.count") do
      post _films_asiatiques_en_salles_staff_roles_url, params: { _films_asiatiques_en_salles_staff_role: { name: @_films_asiatiques_en_salles_staff_role.name } }
    end

    assert_redirected_to _films_asiatiques_en_salles_staff_role_url(FilmsAsiatiquesEnSallesStaffRole.last)
  end

  test "should show _films_asiatiques_en_salles_staff_role" do
    get _films_asiatiques_en_salles_staff_role_url(@_films_asiatiques_en_salles_staff_role)
    assert_response :success
  end

  test "should get edit" do
    get edit__films_asiatiques_en_salles_staff_role_url(@_films_asiatiques_en_salles_staff_role)
    assert_response :success
  end

  test "should update _films_asiatiques_en_salles_staff_role" do
    patch _films_asiatiques_en_salles_staff_role_url(@_films_asiatiques_en_salles_staff_role), params: { _films_asiatiques_en_salles_staff_role: { name: @_films_asiatiques_en_salles_staff_role.name } }
    assert_redirected_to _films_asiatiques_en_salles_staff_role_url(@_films_asiatiques_en_salles_staff_role)
  end

  test "should destroy _films_asiatiques_en_salles_staff_role" do
    assert_difference("FilmsAsiatiquesEnSallesStaffRole.count", -1) do
      delete _films_asiatiques_en_salles_staff_role_url(@_films_asiatiques_en_salles_staff_role)
    end

    assert_redirected_to _films_asiatiques_en_salles_staff_roles_url
  end
end
