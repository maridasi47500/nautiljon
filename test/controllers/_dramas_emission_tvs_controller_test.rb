require "test_helper"

class DramasEmissionTvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_dramas_emission_tv = _dramas_emission_tvs(:one)
  end

  test "should get index" do
    get _dramas_emission_tvs_url
    assert_response :success
  end

  test "should get new" do
    get new__dramas_emission_tv_url
    assert_response :success
  end

  test "should create _dramas_emission_tv" do
    assert_difference("DramasEmissionTv.count") do
      post _dramas_emission_tvs_url, params: { _dramas_emission_tv: { name: @_dramas_emission_tv.name } }
    end

    assert_redirected_to _dramas_emission_tv_url(DramasEmissionTv.last)
  end

  test "should show _dramas_emission_tv" do
    get _dramas_emission_tv_url(@_dramas_emission_tv)
    assert_response :success
  end

  test "should get edit" do
    get edit__dramas_emission_tv_url(@_dramas_emission_tv)
    assert_response :success
  end

  test "should update _dramas_emission_tv" do
    patch _dramas_emission_tv_url(@_dramas_emission_tv), params: { _dramas_emission_tv: { name: @_dramas_emission_tv.name } }
    assert_redirected_to _dramas_emission_tv_url(@_dramas_emission_tv)
  end

  test "should destroy _dramas_emission_tv" do
    assert_difference("DramasEmissionTv.count", -1) do
      delete _dramas_emission_tv_url(@_dramas_emission_tv)
    end

    assert_redirected_to _dramas_emission_tvs_url
  end
end
