require "test_helper"

class PersonnalitesAgencesFinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnalites_agences_fin = _personnalites_agences_fins(:one)
  end

  test "should get index" do
    get _personnalites_agences_fins_url
    assert_response :success
  end

  test "should get new" do
    get new__personnalites_agences_fin_url
    assert_response :success
  end

  test "should create _personnalites_agences_fin" do
    assert_difference("PersonnalitesAgencesFin.count") do
      post _personnalites_agences_fins_url, params: { _personnalites_agences_fin: { name: @_personnalites_agences_fin.name } }
    end

    assert_redirected_to _personnalites_agences_fin_url(PersonnalitesAgencesFin.last)
  end

  test "should show _personnalites_agences_fin" do
    get _personnalites_agences_fin_url(@_personnalites_agences_fin)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnalites_agences_fin_url(@_personnalites_agences_fin)
    assert_response :success
  end

  test "should update _personnalites_agences_fin" do
    patch _personnalites_agences_fin_url(@_personnalites_agences_fin), params: { _personnalites_agences_fin: { name: @_personnalites_agences_fin.name } }
    assert_redirected_to _personnalites_agences_fin_url(@_personnalites_agences_fin)
  end

  test "should destroy _personnalites_agences_fin" do
    assert_difference("PersonnalitesAgencesFin.count", -1) do
      delete _personnalites_agences_fin_url(@_personnalites_agences_fin)
    end

    assert_redirected_to _personnalites_agences_fins_url
  end
end
