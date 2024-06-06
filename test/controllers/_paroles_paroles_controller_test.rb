require "test_helper"

class ParolesParolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_paroles_parole = _paroles_paroles(:one)
  end

  test "should get index" do
    get _paroles_paroles_url
    assert_response :success
  end

  test "should get new" do
    get new__paroles_parole_url
    assert_response :success
  end

  test "should create _paroles_parole" do
    assert_difference("ParolesParole.count") do
      post _paroles_paroles_url, params: { _paroles_parole: { name: @_paroles_parole.name } }
    end

    assert_redirected_to _paroles_parole_url(ParolesParole.last)
  end

  test "should show _paroles_parole" do
    get _paroles_parole_url(@_paroles_parole)
    assert_response :success
  end

  test "should get edit" do
    get edit__paroles_parole_url(@_paroles_parole)
    assert_response :success
  end

  test "should update _paroles_parole" do
    patch _paroles_parole_url(@_paroles_parole), params: { _paroles_parole: { name: @_paroles_parole.name } }
    assert_redirected_to _paroles_parole_url(@_paroles_parole)
  end

  test "should destroy _paroles_parole" do
    assert_difference("ParolesParole.count", -1) do
      delete _paroles_parole_url(@_paroles_parole)
    end

    assert_redirected_to _paroles_paroles_url
  end
end
