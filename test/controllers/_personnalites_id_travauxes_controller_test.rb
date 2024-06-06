require "test_helper"

class PersonnalitesIdTravauxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnalites_id_travaux = _personnalites_id_travauxes(:one)
  end

  test "should get index" do
    get _personnalites_id_travauxes_url
    assert_response :success
  end

  test "should get new" do
    get new__personnalites_id_travaux_url
    assert_response :success
  end

  test "should create _personnalites_id_travaux" do
    assert_difference("PersonnalitesIdTravaux.count") do
      post _personnalites_id_travauxes_url, params: { _personnalites_id_travaux: { name: @_personnalites_id_travaux.name } }
    end

    assert_redirected_to _personnalites_id_travaux_url(PersonnalitesIdTravaux.last)
  end

  test "should show _personnalites_id_travaux" do
    get _personnalites_id_travaux_url(@_personnalites_id_travaux)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnalites_id_travaux_url(@_personnalites_id_travaux)
    assert_response :success
  end

  test "should update _personnalites_id_travaux" do
    patch _personnalites_id_travaux_url(@_personnalites_id_travaux), params: { _personnalites_id_travaux: { name: @_personnalites_id_travaux.name } }
    assert_redirected_to _personnalites_id_travaux_url(@_personnalites_id_travaux)
  end

  test "should destroy _personnalites_id_travaux" do
    assert_difference("PersonnalitesIdTravaux.count", -1) do
      delete _personnalites_id_travaux_url(@_personnalites_id_travaux)
    end

    assert_redirected_to _personnalites_id_travauxes_url
  end
end
