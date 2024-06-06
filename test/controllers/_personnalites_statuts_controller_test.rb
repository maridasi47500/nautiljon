require "test_helper"

class PersonnalitesStatutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnalites_statut = _personnalites_statuts(:one)
  end

  test "should get index" do
    get _personnalites_statuts_url
    assert_response :success
  end

  test "should get new" do
    get new__personnalites_statut_url
    assert_response :success
  end

  test "should create _personnalites_statut" do
    assert_difference("PersonnalitesStatut.count") do
      post _personnalites_statuts_url, params: { _personnalites_statut: { name: @_personnalites_statut.name } }
    end

    assert_redirected_to _personnalites_statut_url(PersonnalitesStatut.last)
  end

  test "should show _personnalites_statut" do
    get _personnalites_statut_url(@_personnalites_statut)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnalites_statut_url(@_personnalites_statut)
    assert_response :success
  end

  test "should update _personnalites_statut" do
    patch _personnalites_statut_url(@_personnalites_statut), params: { _personnalites_statut: { name: @_personnalites_statut.name } }
    assert_redirected_to _personnalites_statut_url(@_personnalites_statut)
  end

  test "should destroy _personnalites_statut" do
    assert_difference("PersonnalitesStatut.count", -1) do
      delete _personnalites_statut_url(@_personnalites_statut)
    end

    assert_redirected_to _personnalites_statuts_url
  end
end
