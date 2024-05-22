require "test_helper"

class OstsAmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @osts_am = osts_ams(:one)
  end

  test "should get index" do
    get osts_ams_url
    assert_response :success
  end

  test "should get new" do
    get new_osts_am_url
    assert_response :success
  end

  test "should create osts_am" do
    assert_difference("OstsAm.count") do
      post osts_ams_url, params: { osts_am: { name: @osts_am.name } }
    end

    assert_redirected_to osts_am_url(OstsAm.last)
  end

  test "should show osts_am" do
    get osts_am_url(@osts_am)
    assert_response :success
  end

  test "should get edit" do
    get edit_osts_am_url(@osts_am)
    assert_response :success
  end

  test "should update osts_am" do
    patch osts_am_url(@osts_am), params: { osts_am: { name: @osts_am.name } }
    assert_redirected_to osts_am_url(@osts_am)
  end

  test "should destroy osts_am" do
    assert_difference("OstsAm.count", -1) do
      delete osts_am_url(@osts_am)
    end

    assert_redirected_to osts_ams_url
  end
end
