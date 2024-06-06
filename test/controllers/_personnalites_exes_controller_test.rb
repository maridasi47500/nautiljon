require "test_helper"

class PersonnalitesExesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_personnalites_ex = _personnalites_exes(:one)
  end

  test "should get index" do
    get _personnalites_exes_url
    assert_response :success
  end

  test "should get new" do
    get new__personnalites_ex_url
    assert_response :success
  end

  test "should create _personnalites_ex" do
    assert_difference("PersonnalitesEx.count") do
      post _personnalites_exes_url, params: { _personnalites_ex: { name: @_personnalites_ex.name } }
    end

    assert_redirected_to _personnalites_ex_url(PersonnalitesEx.last)
  end

  test "should show _personnalites_ex" do
    get _personnalites_ex_url(@_personnalites_ex)
    assert_response :success
  end

  test "should get edit" do
    get edit__personnalites_ex_url(@_personnalites_ex)
    assert_response :success
  end

  test "should update _personnalites_ex" do
    patch _personnalites_ex_url(@_personnalites_ex), params: { _personnalites_ex: { name: @_personnalites_ex.name } }
    assert_redirected_to _personnalites_ex_url(@_personnalites_ex)
  end

  test "should destroy _personnalites_ex" do
    assert_difference("PersonnalitesEx.count", -1) do
      delete _personnalites_ex_url(@_personnalites_ex)
    end

    assert_redirected_to _personnalites_exes_url
  end
end
