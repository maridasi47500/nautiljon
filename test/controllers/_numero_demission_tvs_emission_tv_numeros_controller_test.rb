require "test_helper"

class NumeroDemissionTvsEmissionTvNumerosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_numero_demission_tvs_emission_tv_numero = _numero_demission_tvs_emission_tv_numeros(:one)
  end

  test "should get index" do
    get _numero_demission_tvs_emission_tv_numeros_url
    assert_response :success
  end

  test "should get new" do
    get new__numero_demission_tvs_emission_tv_numero_url
    assert_response :success
  end

  test "should create _numero_demission_tvs_emission_tv_numero" do
    assert_difference("NumeroDemissionTvsEmissionTvNumero.count") do
      post _numero_demission_tvs_emission_tv_numeros_url, params: { _numero_demission_tvs_emission_tv_numero: { name: @_numero_demission_tvs_emission_tv_numero.name } }
    end

    assert_redirected_to _numero_demission_tvs_emission_tv_numero_url(NumeroDemissionTvsEmissionTvNumero.last)
  end

  test "should show _numero_demission_tvs_emission_tv_numero" do
    get _numero_demission_tvs_emission_tv_numero_url(@_numero_demission_tvs_emission_tv_numero)
    assert_response :success
  end

  test "should get edit" do
    get edit__numero_demission_tvs_emission_tv_numero_url(@_numero_demission_tvs_emission_tv_numero)
    assert_response :success
  end

  test "should update _numero_demission_tvs_emission_tv_numero" do
    patch _numero_demission_tvs_emission_tv_numero_url(@_numero_demission_tvs_emission_tv_numero), params: { _numero_demission_tvs_emission_tv_numero: { name: @_numero_demission_tvs_emission_tv_numero.name } }
    assert_redirected_to _numero_demission_tvs_emission_tv_numero_url(@_numero_demission_tvs_emission_tv_numero)
  end

  test "should destroy _numero_demission_tvs_emission_tv_numero" do
    assert_difference("NumeroDemissionTvsEmissionTvNumero.count", -1) do
      delete _numero_demission_tvs_emission_tv_numero_url(@_numero_demission_tvs_emission_tv_numero)
    end

    assert_redirected_to _numero_demission_tvs_emission_tv_numeros_url
  end
end
