require "test_helper"

class PersonnageDanimesPersoPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnage_danimes_perso_plu = _personnage_danimes_perso_plus(:one)
  end

  test "should get index" do
    get _personnage_danimes_perso_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__personnage_danimes_perso_plu_url
    assert_response :success
  end

  test "should create _personnage_danimes_perso_plu" do
    assert_difference("PersonnageDanimesPersoPlu.count") do
      post _personnage_danimes_perso_plus_url, params: { _personnage_danimes_perso_plu: { name: @_personnage_danimes_perso_plu.name } }
    end

    assert_redirected_to _personnage_danimes_perso_plu_url(PersonnageDanimesPersoPlu.last)
  end

  test "should show _personnage_danimes_perso_plu" do
    get _personnage_danimes_perso_plu_url(@_personnage_danimes_perso_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnage_danimes_perso_plu_url(@_personnage_danimes_perso_plu)
    assert_response :success
  end

  test "should update _personnage_danimes_perso_plu" do
    patch _personnage_danimes_perso_plu_url(@_personnage_danimes_perso_plu), params: { _personnage_danimes_perso_plu: { name: @_personnage_danimes_perso_plu.name } }
    assert_redirected_to _personnage_danimes_perso_plu_url(@_personnage_danimes_perso_plu)
  end

  test "should destroy _personnage_danimes_perso_plu" do
    assert_difference("PersonnageDanimesPersoPlu.count", -1) do
      delete _personnage_danimes_perso_plu_url(@_personnage_danimes_perso_plu)
    end

    assert_redirected_to _personnage_danimes_perso_plus_url
  end
end
