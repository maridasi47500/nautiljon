require "test_helper"

class OstsEmissionTvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @osts_emission_tv = osts_emission_tvs(:one)
  end

  test "should get index" do
    get osts_emission_tvs_url
    assert_response :success
  end

  test "should get new" do
    get new_osts_emission_tv_url
    assert_response :success
  end

  test "should create osts_emission_tv" do
    assert_difference("OstsEmissionTv.count") do
      post osts_emission_tvs_url, params: { osts_emission_tv: { name: @osts_emission_tv.name } }
    end

    assert_redirected_to osts_emission_tv_url(OstsEmissionTv.last)
  end

  test "should show osts_emission_tv" do
    get osts_emission_tv_url(@osts_emission_tv)
    assert_response :success
  end

  test "should get edit" do
    get edit_osts_emission_tv_url(@osts_emission_tv)
    assert_response :success
  end

  test "should update osts_emission_tv" do
    patch osts_emission_tv_url(@osts_emission_tv), params: { osts_emission_tv: { name: @osts_emission_tv.name } }
    assert_redirected_to osts_emission_tv_url(@osts_emission_tv)
  end

  test "should destroy osts_emission_tv" do
    assert_difference("OstsEmissionTv.count", -1) do
      delete osts_emission_tv_url(@osts_emission_tv)
    end

    assert_redirected_to osts_emission_tvs_url
  end
end
