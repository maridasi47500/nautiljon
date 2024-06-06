require "test_helper"

class NumeroDemissionTvsIdEmissionTvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_numero_demission_tvs_id_emission_tv = _numero_demission_tvs_id_emission_tvs(:one)
  end

  test "should get index" do
    get _numero_demission_tvs_id_emission_tvs_url
    assert_response :success
  end

  test "should get new" do
    get new__numero_demission_tvs_id_emission_tv_url
    assert_response :success
  end

  test "should create _numero_demission_tvs_id_emission_tv" do
    assert_difference("NumeroDemissionTvsIdEmissionTv.count") do
      post _numero_demission_tvs_id_emission_tvs_url, params: { _numero_demission_tvs_id_emission_tv: { name: @_numero_demission_tvs_id_emission_tv.name } }
    end

    assert_redirected_to _numero_demission_tvs_id_emission_tv_url(NumeroDemissionTvsIdEmissionTv.last)
  end

  test "should show _numero_demission_tvs_id_emission_tv" do
    get _numero_demission_tvs_id_emission_tv_url(@_numero_demission_tvs_id_emission_tv)
    assert_response :success
  end

  test "should get edit" do
    get edit__numero_demission_tvs_id_emission_tv_url(@_numero_demission_tvs_id_emission_tv)
    assert_response :success
  end

  test "should update _numero_demission_tvs_id_emission_tv" do
    patch _numero_demission_tvs_id_emission_tv_url(@_numero_demission_tvs_id_emission_tv), params: { _numero_demission_tvs_id_emission_tv: { name: @_numero_demission_tvs_id_emission_tv.name } }
    assert_redirected_to _numero_demission_tvs_id_emission_tv_url(@_numero_demission_tvs_id_emission_tv)
  end

  test "should destroy _numero_demission_tvs_id_emission_tv" do
    assert_difference("NumeroDemissionTvsIdEmissionTv.count", -1) do
      delete _numero_demission_tvs_id_emission_tv_url(@_numero_demission_tvs_id_emission_tv)
    end

    assert_redirected_to _numero_demission_tvs_id_emission_tvs_url
  end
end
