require "test_helper"

class PersonnalitesAgencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnalites_agence = _personnalites_agences(:one)
  end

  test "should get index" do
    get _personnalites_agences_url
    assert_response :success
  end

  test "should get new" do
    get new__personnalites_agence_url
    assert_response :success
  end

  test "should create _personnalites_agence" do
    assert_difference("PersonnalitesAgence.count") do
      post _personnalites_agences_url, params: { _personnalites_agence: { name: @_personnalites_agence.name } }
    end

    assert_redirected_to _personnalites_agence_url(PersonnalitesAgence.last)
  end

  test "should show _personnalites_agence" do
    get _personnalites_agence_url(@_personnalites_agence)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnalites_agence_url(@_personnalites_agence)
    assert_response :success
  end

  test "should update _personnalites_agence" do
    patch _personnalites_agence_url(@_personnalites_agence), params: { _personnalites_agence: { name: @_personnalites_agence.name } }
    assert_redirected_to _personnalites_agence_url(@_personnalites_agence)
  end

  test "should destroy _personnalites_agence" do
    assert_difference("PersonnalitesAgence.count", -1) do
      delete _personnalites_agence_url(@_personnalites_agence)
    end

    assert_redirected_to _personnalites_agences_url
  end
end
