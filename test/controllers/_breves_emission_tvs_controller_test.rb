require "test_helper"

class BrevesEmissionTvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @_breves_emission_tv = _breves_emission_tvs(:one)
  end

  test "should get index" do
    get _breves_emission_tvs_url
    assert_response :success
  end

  test "should get new" do
    get new__breves_emission_tv_url
    assert_response :success
  end

  test "should create _breves_emission_tv" do
    assert_difference("BrevesEmissionTv.count") do
      post _breves_emission_tvs_url, params: { _breves_emission_tv: { name: @_breves_emission_tv.name } }
    end

    assert_redirected_to _breves_emission_tv_url(BrevesEmissionTv.last)
  end

  test "should show _breves_emission_tv" do
    get _breves_emission_tv_url(@_breves_emission_tv)
    assert_response :success
  end

  test "should get edit" do
    get edit__breves_emission_tv_url(@_breves_emission_tv)
    assert_response :success
  end

  test "should update _breves_emission_tv" do
    patch _breves_emission_tv_url(@_breves_emission_tv), params: { _breves_emission_tv: { name: @_breves_emission_tv.name } }
    assert_redirected_to _breves_emission_tv_url(@_breves_emission_tv)
  end

  test "should destroy _breves_emission_tv" do
    assert_difference("BrevesEmissionTv.count", -1) do
      delete _breves_emission_tv_url(@_breves_emission_tv)
    end

    assert_redirected_to _breves_emission_tvs_url
  end
end
