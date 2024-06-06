require "test_helper"

class PersonnalitesExDebutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnalites_ex_debut = _personnalites_ex_debuts(:one)
  end

  test "should get index" do
    get _personnalites_ex_debuts_url
    assert_response :success
  end

  test "should get new" do
    get new__personnalites_ex_debut_url
    assert_response :success
  end

  test "should create _personnalites_ex_debut" do
    assert_difference("PersonnalitesExDebut.count") do
      post _personnalites_ex_debuts_url, params: { _personnalites_ex_debut: { name: @_personnalites_ex_debut.name } }
    end

    assert_redirected_to _personnalites_ex_debut_url(PersonnalitesExDebut.last)
  end

  test "should show _personnalites_ex_debut" do
    get _personnalites_ex_debut_url(@_personnalites_ex_debut)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnalites_ex_debut_url(@_personnalites_ex_debut)
    assert_response :success
  end

  test "should update _personnalites_ex_debut" do
    patch _personnalites_ex_debut_url(@_personnalites_ex_debut), params: { _personnalites_ex_debut: { name: @_personnalites_ex_debut.name } }
    assert_redirected_to _personnalites_ex_debut_url(@_personnalites_ex_debut)
  end

  test "should destroy _personnalites_ex_debut" do
    assert_difference("PersonnalitesExDebut.count", -1) do
      delete _personnalites_ex_debut_url(@_personnalites_ex_debut)
    end

    assert_redirected_to _personnalites_ex_debuts_url
  end
end
