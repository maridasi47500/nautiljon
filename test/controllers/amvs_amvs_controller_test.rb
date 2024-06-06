require "test_helper"

class AmvsAmvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @amvs_amv = amvs_amvs(:one)
  end

  test "should get index" do
    get amvs_amvs_url
    assert_response :success
  end

  test "should get new" do
    get new_amvs_amv_url
    assert_response :success
  end

  test "should create amvs_amv" do
    assert_difference("AmvsAmv.count") do
      post amvs_amvs_url, params: { amvs_amv: { name: @amvs_amv.name } }
    end

    assert_redirected_to amvs_amv_url(AmvsAmv.last)
  end

  test "should show amvs_amv" do
    get amvs_amv_url(@amvs_amv)
    assert_response :success
  end

  test "should get edit" do
    get edit_amvs_amv_url(@amvs_amv)
    assert_response :success
  end

  test "should update amvs_amv" do
    patch amvs_amv_url(@amvs_amv), params: { amvs_amv: { name: @amvs_amv.name } }
    assert_redirected_to amvs_amv_url(@amvs_amv)
  end

  test "should destroy amvs_amv" do
    assert_difference("AmvsAmv.count", -1) do
      delete amvs_amv_url(@amvs_amv)
    end

    assert_redirected_to amvs_amvs_url
  end
end
