require "test_helper"

class Clips::Lives::Bonus::ConcertsEmissionTvNumerosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_clips___lives___bonus___concerts_emission_tv_numero = _clips___lives___bonus___concerts_emission_tv_numeros(:one)
  end

  test "should get index" do
    get _clips___lives___bonus___concerts_emission_tv_numeros_url
    assert_response :success
  end

  test "should get new" do
    get new__clips___lives___bonus___concerts_emission_tv_numero_url
    assert_response :success
  end

  test "should create _clips___lives___bonus___concerts_emission_tv_numero" do
    assert_difference("Clips::Lives::Bonus::ConcertsEmissionTvNumero.count") do
      post _clips___lives___bonus___concerts_emission_tv_numeros_url, params: { _clips___lives___bonus___concerts_emission_tv_numero: { name: @_clips___lives___bonus___concerts_emission_tv_numero.name } }
    end

    assert_redirected_to _clips___lives___bonus___concerts_emission_tv_numero_url(Clips::Lives::Bonus::ConcertsEmissionTvNumero.last)
  end

  test "should show _clips___lives___bonus___concerts_emission_tv_numero" do
    get _clips___lives___bonus___concerts_emission_tv_numero_url(@_clips___lives___bonus___concerts_emission_tv_numero)
    assert_response :success
  end

  test "should get edit" do
    get edit__clips___lives___bonus___concerts_emission_tv_numero_url(@_clips___lives___bonus___concerts_emission_tv_numero)
    assert_response :success
  end

  test "should update _clips___lives___bonus___concerts_emission_tv_numero" do
    patch _clips___lives___bonus___concerts_emission_tv_numero_url(@_clips___lives___bonus___concerts_emission_tv_numero), params: { _clips___lives___bonus___concerts_emission_tv_numero: { name: @_clips___lives___bonus___concerts_emission_tv_numero.name } }
    assert_redirected_to _clips___lives___bonus___concerts_emission_tv_numero_url(@_clips___lives___bonus___concerts_emission_tv_numero)
  end

  test "should destroy _clips___lives___bonus___concerts_emission_tv_numero" do
    assert_difference("Clips::Lives::Bonus::ConcertsEmissionTvNumero.count", -1) do
      delete _clips___lives___bonus___concerts_emission_tv_numero_url(@_clips___lives___bonus___concerts_emission_tv_numero)
    end

    assert_redirected_to _clips___lives___bonus___concerts_emission_tv_numeros_url
  end
end
