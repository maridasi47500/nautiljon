require "test_helper"

class CdsEmissionTvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_cds_emission_tv = _cds_emission_tvs(:one)
  end

  test "should get index" do
    get _cds_emission_tvs_url
    assert_response :success
  end

  test "should get new" do
    get new__cds_emission_tv_url
    assert_response :success
  end

  test "should create _cds_emission_tv" do
    assert_difference("CdsEmissionTv.count") do
      post _cds_emission_tvs_url, params: { _cds_emission_tv: { name: @_cds_emission_tv.name } }
    end

    assert_redirected_to _cds_emission_tv_url(CdsEmissionTv.last)
  end

  test "should show _cds_emission_tv" do
    get _cds_emission_tv_url(@_cds_emission_tv)
    assert_response :success
  end

  test "should get edit" do
    get edit__cds_emission_tv_url(@_cds_emission_tv)
    assert_response :success
  end

  test "should update _cds_emission_tv" do
    patch _cds_emission_tv_url(@_cds_emission_tv), params: { _cds_emission_tv: { name: @_cds_emission_tv.name } }
    assert_redirected_to _cds_emission_tv_url(@_cds_emission_tv)
  end

  test "should destroy _cds_emission_tv" do
    assert_difference("CdsEmissionTv.count", -1) do
      delete _cds_emission_tv_url(@_cds_emission_tv)
    end

    assert_redirected_to _cds_emission_tvs_url
  end
end
