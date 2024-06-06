require "test_helper"

class PersonnageDanimesPersosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnage_danimes_perso = _personnage_danimes_persos(:one)
  end

  test "should get index" do
    get _personnage_danimes_persos_url
    assert_response :success
  end

  test "should get new" do
    get new__personnage_danimes_perso_url
    assert_response :success
  end

  test "should create _personnage_danimes_perso" do
    assert_difference("PersonnageDanimesPerso.count") do
      post _personnage_danimes_persos_url, params: { _personnage_danimes_perso: { name: @_personnage_danimes_perso.name } }
    end

    assert_redirected_to _personnage_danimes_perso_url(PersonnageDanimesPerso.last)
  end

  test "should show _personnage_danimes_perso" do
    get _personnage_danimes_perso_url(@_personnage_danimes_perso)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnage_danimes_perso_url(@_personnage_danimes_perso)
    assert_response :success
  end

  test "should update _personnage_danimes_perso" do
    patch _personnage_danimes_perso_url(@_personnage_danimes_perso), params: { _personnage_danimes_perso: { name: @_personnage_danimes_perso.name } }
    assert_redirected_to _personnage_danimes_perso_url(@_personnage_danimes_perso)
  end

  test "should destroy _personnage_danimes_perso" do
    assert_difference("PersonnageDanimesPerso.count", -1) do
      delete _personnage_danimes_perso_url(@_personnage_danimes_perso)
    end

    assert_redirected_to _personnage_danimes_persos_url
  end
end
