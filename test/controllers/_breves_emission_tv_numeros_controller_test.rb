require "test_helper"

class BrevesEmissionTvNumerosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_emission_tv_numero = _breves_emission_tv_numeros(:one)
  end

  test "should get index" do
    get _breves_emission_tv_numeros_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_emission_tv_numero_url
    assert_response :success
  end

  test "should create _breves_emission_tv_numero" do
    assert_difference("BrevesEmissionTvNumero.count") do
      post _breves_emission_tv_numeros_url, params: { _breves_emission_tv_numero: { name: @_breves_emission_tv_numero.name } }
    end

    assert_redirected_to _breves_emission_tv_numero_url(BrevesEmissionTvNumero.last)
  end

  test "should show _breves_emission_tv_numero" do
    get _breves_emission_tv_numero_url(@_breves_emission_tv_numero)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_emission_tv_numero_url(@_breves_emission_tv_numero)
    assert_response :success
  end

  test "should update _breves_emission_tv_numero" do
    patch _breves_emission_tv_numero_url(@_breves_emission_tv_numero), params: { _breves_emission_tv_numero: { name: @_breves_emission_tv_numero.name } }
    assert_redirected_to _breves_emission_tv_numero_url(@_breves_emission_tv_numero)
  end

  test "should destroy _breves_emission_tv_numero" do
    assert_difference("BrevesEmissionTvNumero.count", -1) do
      delete _breves_emission_tv_numero_url(@_breves_emission_tv_numero)
    end

    assert_redirected_to _breves_emission_tv_numeros_url
  end
end
