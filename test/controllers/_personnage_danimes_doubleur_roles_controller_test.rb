require "test_helper"

class PersonnageDanimesDoubleurRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnage_danimes_doubleur_role = _personnage_danimes_doubleur_roles(:one)
  end

  test "should get index" do
    get _personnage_danimes_doubleur_roles_url
    assert_response :success
  end

  test "should get new" do
    get new__personnage_danimes_doubleur_role_url
    assert_response :success
  end

  test "should create _personnage_danimes_doubleur_role" do
    assert_difference("PersonnageDanimesDoubleurRole.count") do
      post _personnage_danimes_doubleur_roles_url, params: { _personnage_danimes_doubleur_role: { name: @_personnage_danimes_doubleur_role.name } }
    end

    assert_redirected_to _personnage_danimes_doubleur_role_url(PersonnageDanimesDoubleurRole.last)
  end

  test "should show _personnage_danimes_doubleur_role" do
    get _personnage_danimes_doubleur_role_url(@_personnage_danimes_doubleur_role)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnage_danimes_doubleur_role_url(@_personnage_danimes_doubleur_role)
    assert_response :success
  end

  test "should update _personnage_danimes_doubleur_role" do
    patch _personnage_danimes_doubleur_role_url(@_personnage_danimes_doubleur_role), params: { _personnage_danimes_doubleur_role: { name: @_personnage_danimes_doubleur_role.name } }
    assert_redirected_to _personnage_danimes_doubleur_role_url(@_personnage_danimes_doubleur_role)
  end

  test "should destroy _personnage_danimes_doubleur_role" do
    assert_difference("PersonnageDanimesDoubleurRole.count", -1) do
      delete _personnage_danimes_doubleur_role_url(@_personnage_danimes_doubleur_role)
    end

    assert_redirected_to _personnage_danimes_doubleur_roles_url
  end
end
