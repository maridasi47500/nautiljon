require "test_helper"

class OstsLnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @osts_ln = osts_lns(:one)
  end

  test "should get index" do
    get osts_lns_url
    assert_response :success
  end

  test "should get new" do
    get new_osts_ln_url
    assert_response :success
  end

  test "should create osts_ln" do
    assert_difference("OstsLn.count") do
      post osts_lns_url, params: { osts_ln: { name: @osts_ln.name } }
    end

    assert_redirected_to osts_ln_url(OstsLn.last)
  end

  test "should show osts_ln" do
    get osts_ln_url(@osts_ln)
    assert_response :success
  end

  test "should get edit" do
    get edit_osts_ln_url(@osts_ln)
    assert_response :success
  end

  test "should update osts_ln" do
    patch osts_ln_url(@osts_ln), params: { osts_ln: { name: @osts_ln.name } }
    assert_redirected_to osts_ln_url(@osts_ln)
  end

  test "should destroy osts_ln" do
    assert_difference("OstsLn.count", -1) do
      delete osts_ln_url(@osts_ln)
    end

    assert_redirected_to osts_lns_url
  end
end
