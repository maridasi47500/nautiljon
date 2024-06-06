require "test_helper"

class NumeroDemissionTvsPresentateursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_numero_demission_tvs_presentateur = _numero_demission_tvs_presentateurs(:one)
  end

  test "should get index" do
    get _numero_demission_tvs_presentateurs_url
    assert_response :success
  end

  test "should get new" do
    get new__numero_demission_tvs_presentateur_url
    assert_response :success
  end

  test "should create _numero_demission_tvs_presentateur" do
    assert_difference("NumeroDemissionTvsPresentateur.count") do
      post _numero_demission_tvs_presentateurs_url, params: { _numero_demission_tvs_presentateur: { name: @_numero_demission_tvs_presentateur.name } }
    end

    assert_redirected_to _numero_demission_tvs_presentateur_url(NumeroDemissionTvsPresentateur.last)
  end

  test "should show _numero_demission_tvs_presentateur" do
    get _numero_demission_tvs_presentateur_url(@_numero_demission_tvs_presentateur)
    assert_response :success
  end

  test "should get edit" do
    get edit__numero_demission_tvs_presentateur_url(@_numero_demission_tvs_presentateur)
    assert_response :success
  end

  test "should update _numero_demission_tvs_presentateur" do
    patch _numero_demission_tvs_presentateur_url(@_numero_demission_tvs_presentateur), params: { _numero_demission_tvs_presentateur: { name: @_numero_demission_tvs_presentateur.name } }
    assert_redirected_to _numero_demission_tvs_presentateur_url(@_numero_demission_tvs_presentateur)
  end

  test "should destroy _numero_demission_tvs_presentateur" do
    assert_difference("NumeroDemissionTvsPresentateur.count", -1) do
      delete _numero_demission_tvs_presentateur_url(@_numero_demission_tvs_presentateur)
    end

    assert_redirected_to _numero_demission_tvs_presentateurs_url
  end
end
