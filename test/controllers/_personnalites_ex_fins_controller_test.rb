require "test_helper"

class PersonnalitesExFinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnalites_ex_fin = _personnalites_ex_fins(:one)
  end

  test "should get index" do
    get _personnalites_ex_fins_url
    assert_response :success
  end

  test "should get new" do
    get new__personnalites_ex_fin_url
    assert_response :success
  end

  test "should create _personnalites_ex_fin" do
    assert_difference("PersonnalitesExFin.count") do
      post _personnalites_ex_fins_url, params: { _personnalites_ex_fin: { name: @_personnalites_ex_fin.name } }
    end

    assert_redirected_to _personnalites_ex_fin_url(PersonnalitesExFin.last)
  end

  test "should show _personnalites_ex_fin" do
    get _personnalites_ex_fin_url(@_personnalites_ex_fin)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnalites_ex_fin_url(@_personnalites_ex_fin)
    assert_response :success
  end

  test "should update _personnalites_ex_fin" do
    patch _personnalites_ex_fin_url(@_personnalites_ex_fin), params: { _personnalites_ex_fin: { name: @_personnalites_ex_fin.name } }
    assert_redirected_to _personnalites_ex_fin_url(@_personnalites_ex_fin)
  end

  test "should destroy _personnalites_ex_fin" do
    assert_difference("PersonnalitesExFin.count", -1) do
      delete _personnalites_ex_fin_url(@_personnalites_ex_fin)
    end

    assert_redirected_to _personnalites_ex_fins_url
  end
end
