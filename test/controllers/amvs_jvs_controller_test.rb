require "test_helper"

class AmvsJvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @amvs_jv = amvs_jvs(:one)
  end

  test "should get index" do
    get amvs_jvs_url
    assert_response :success
  end

  test "should get new" do
    get new_amvs_jv_url
    assert_response :success
  end

  test "should create amvs_jv" do
    assert_difference("AmvsJv.count") do
      post amvs_jvs_url, params: { amvs_jv: { name: @amvs_jv.name } }
    end

    assert_redirected_to amvs_jv_url(AmvsJv.last)
  end

  test "should show amvs_jv" do
    get amvs_jv_url(@amvs_jv)
    assert_response :success
  end

  test "should get edit" do
    get edit_amvs_jv_url(@amvs_jv)
    assert_response :success
  end

  test "should update amvs_jv" do
    patch amvs_jv_url(@amvs_jv), params: { amvs_jv: { name: @amvs_jv.name } }
    assert_redirected_to amvs_jv_url(@amvs_jv)
  end

  test "should destroy amvs_jv" do
    assert_difference("AmvsJv.count", -1) do
      delete amvs_jv_url(@amvs_jv)
    end

    assert_redirected_to amvs_jvs_url
  end
end
