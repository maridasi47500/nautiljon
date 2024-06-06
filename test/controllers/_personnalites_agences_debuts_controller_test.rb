require "test_helper"

class PersonnalitesAgencesDebutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnalites_agences_debut = _personnalites_agences_debuts(:one)
  end

  test "should get index" do
    get _personnalites_agences_debuts_url
    assert_response :success
  end

  test "should get new" do
    get new__personnalites_agences_debut_url
    assert_response :success
  end

  test "should create _personnalites_agences_debut" do
    assert_difference("PersonnalitesAgencesDebut.count") do
      post _personnalites_agences_debuts_url, params: { _personnalites_agences_debut: { name: @_personnalites_agences_debut.name } }
    end

    assert_redirected_to _personnalites_agences_debut_url(PersonnalitesAgencesDebut.last)
  end

  test "should show _personnalites_agences_debut" do
    get _personnalites_agences_debut_url(@_personnalites_agences_debut)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnalites_agences_debut_url(@_personnalites_agences_debut)
    assert_response :success
  end

  test "should update _personnalites_agences_debut" do
    patch _personnalites_agences_debut_url(@_personnalites_agences_debut), params: { _personnalites_agences_debut: { name: @_personnalites_agences_debut.name } }
    assert_redirected_to _personnalites_agences_debut_url(@_personnalites_agences_debut)
  end

  test "should destroy _personnalites_agences_debut" do
    assert_difference("PersonnalitesAgencesDebut.count", -1) do
      delete _personnalites_agences_debut_url(@_personnalites_agences_debut)
    end

    assert_redirected_to _personnalites_agences_debuts_url
  end
end
