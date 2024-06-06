require "test_helper"

class DramasGeneriquesParolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_generiques_parole = _dramas_generiques_paroles(:one)
  end

  test "should get index" do
    get _dramas_generiques_paroles_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_generiques_parole_url
    assert_response :success
  end

  test "should create _dramas_generiques_parole" do
    assert_difference("DramasGeneriquesParole.count") do
      post _dramas_generiques_paroles_url, params: { _dramas_generiques_parole: { name: @_dramas_generiques_parole.name } }
    end

    assert_redirected_to _dramas_generiques_parole_url(DramasGeneriquesParole.last)
  end

  test "should show _dramas_generiques_parole" do
    get _dramas_generiques_parole_url(@_dramas_generiques_parole)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_generiques_parole_url(@_dramas_generiques_parole)
    assert_response :success
  end

  test "should update _dramas_generiques_parole" do
    patch _dramas_generiques_parole_url(@_dramas_generiques_parole), params: { _dramas_generiques_parole: { name: @_dramas_generiques_parole.name } }
    assert_redirected_to _dramas_generiques_parole_url(@_dramas_generiques_parole)
  end

  test "should destroy _dramas_generiques_parole" do
    assert_difference("DramasGeneriquesParole.count", -1) do
      delete _dramas_generiques_parole_url(@_dramas_generiques_parole)
    end

    assert_redirected_to _dramas_generiques_paroles_url
  end
end
