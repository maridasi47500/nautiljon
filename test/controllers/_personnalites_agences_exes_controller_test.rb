require "test_helper"

class PersonnalitesAgencesExesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnalites_agences_ex = _personnalites_agences_exes(:one)
  end

  test "should get index" do
    get _personnalites_agences_exes_url
    assert_response :success
  end

  test "should get new" do
    get new__personnalites_agences_ex_url
    assert_response :success
  end

  test "should create _personnalites_agences_ex" do
    assert_difference("PersonnalitesAgencesEx.count") do
      post _personnalites_agences_exes_url, params: { _personnalites_agences_ex: { name: @_personnalites_agences_ex.name } }
    end

    assert_redirected_to _personnalites_agences_ex_url(PersonnalitesAgencesEx.last)
  end

  test "should show _personnalites_agences_ex" do
    get _personnalites_agences_ex_url(@_personnalites_agences_ex)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnalites_agences_ex_url(@_personnalites_agences_ex)
    assert_response :success
  end

  test "should update _personnalites_agences_ex" do
    patch _personnalites_agences_ex_url(@_personnalites_agences_ex), params: { _personnalites_agences_ex: { name: @_personnalites_agences_ex.name } }
    assert_redirected_to _personnalites_agences_ex_url(@_personnalites_agences_ex)
  end

  test "should destroy _personnalites_agences_ex" do
    assert_difference("PersonnalitesAgencesEx.count", -1) do
      delete _personnalites_agences_ex_url(@_personnalites_agences_ex)
    end

    assert_redirected_to _personnalites_agences_exes_url
  end
end
