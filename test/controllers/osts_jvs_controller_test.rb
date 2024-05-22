require "test_helper"

class OstsJvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @osts_jv = osts_jvs(:one)
  end

  test "should get index" do
    get osts_jvs_url
    assert_response :success
  end

  test "should get new" do
    get new_osts_jv_url
    assert_response :success
  end

  test "should create osts_jv" do
    assert_difference("OstsJv.count") do
      post osts_jvs_url, params: { osts_jv: { name: @osts_jv.name } }
    end

    assert_redirected_to osts_jv_url(OstsJv.last)
  end

  test "should show osts_jv" do
    get osts_jv_url(@osts_jv)
    assert_response :success
  end

  test "should get edit" do
    get edit_osts_jv_url(@osts_jv)
    assert_response :success
  end

  test "should update osts_jv" do
    patch osts_jv_url(@osts_jv), params: { osts_jv: { name: @osts_jv.name } }
    assert_redirected_to osts_jv_url(@osts_jv)
  end

  test "should destroy osts_jv" do
    assert_difference("OstsJv.count", -1) do
      delete osts_jv_url(@osts_jv)
    end

    assert_redirected_to osts_jvs_url
  end
end
