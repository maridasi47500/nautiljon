require "test_helper"

class OstsOstsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @osts_ost = osts_osts(:one)
  end

  test "should get index" do
    get osts_osts_url
    assert_response :success
  end

  test "should get new" do
    get new_osts_ost_url
    assert_response :success
  end

  test "should create osts_ost" do
    assert_difference("OstsOst.count") do
      post osts_osts_url, params: { osts_ost: { name: @osts_ost.name } }
    end

    assert_redirected_to osts_ost_url(OstsOst.last)
  end

  test "should show osts_ost" do
    get osts_ost_url(@osts_ost)
    assert_response :success
  end

  test "should get edit" do
    get edit_osts_ost_url(@osts_ost)
    assert_response :success
  end

  test "should update osts_ost" do
    patch osts_ost_url(@osts_ost), params: { osts_ost: { name: @osts_ost.name } }
    assert_redirected_to osts_ost_url(@osts_ost)
  end

  test "should destroy osts_ost" do
    assert_difference("OstsOst.count", -1) do
      delete osts_ost_url(@osts_ost)
    end

    assert_redirected_to osts_osts_url
  end
end
