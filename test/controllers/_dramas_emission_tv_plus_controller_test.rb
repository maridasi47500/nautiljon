require "test_helper"

class DramasEmissionTvPlusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_emission_tv_plu = _dramas_emission_tv_plus(:one)
  end

  test "should get index" do
    get _dramas_emission_tv_plus_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_emission_tv_plu_url
    assert_response :success
  end

  test "should create _dramas_emission_tv_plu" do
    assert_difference("DramasEmissionTvPlu.count") do
      post _dramas_emission_tv_plus_url, params: { _dramas_emission_tv_plu: { name: @_dramas_emission_tv_plu.name } }
    end

    assert_redirected_to _dramas_emission_tv_plu_url(DramasEmissionTvPlu.last)
  end

  test "should show _dramas_emission_tv_plu" do
    get _dramas_emission_tv_plu_url(@_dramas_emission_tv_plu)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_emission_tv_plu_url(@_dramas_emission_tv_plu)
    assert_response :success
  end

  test "should update _dramas_emission_tv_plu" do
    patch _dramas_emission_tv_plu_url(@_dramas_emission_tv_plu), params: { _dramas_emission_tv_plu: { name: @_dramas_emission_tv_plu.name } }
    assert_redirected_to _dramas_emission_tv_plu_url(@_dramas_emission_tv_plu)
  end

  test "should destroy _dramas_emission_tv_plu" do
    assert_difference("DramasEmissionTvPlu.count", -1) do
      delete _dramas_emission_tv_plu_url(@_dramas_emission_tv_plu)
    end

    assert_redirected_to _dramas_emission_tv_plus_url
  end
end
