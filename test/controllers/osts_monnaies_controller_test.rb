require "test_helper"

class OstsMonnaiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @osts_monnaie = osts_monnaies(:one)
  end

  test "should get index" do
    get osts_monnaies_url
    assert_response :success
  end

  test "should get new" do
    get new_osts_monnaie_url
    assert_response :success
  end

  test "should create osts_monnaie" do
    assert_difference("OstsMonnaie.count") do
      post osts_monnaies_url, params: { osts_monnaie: { name: @osts_monnaie.name } }
    end

    assert_redirected_to osts_monnaie_url(OstsMonnaie.last)
  end

  test "should show osts_monnaie" do
    get osts_monnaie_url(@osts_monnaie)
    assert_response :success
  end

  test "should get edit" do
    get edit_osts_monnaie_url(@osts_monnaie)
    assert_response :success
  end

  test "should update osts_monnaie" do
    patch osts_monnaie_url(@osts_monnaie), params: { osts_monnaie: { name: @osts_monnaie.name } }
    assert_redirected_to osts_monnaie_url(@osts_monnaie)
  end

  test "should destroy osts_monnaie" do
    assert_difference("OstsMonnaie.count", -1) do
      delete osts_monnaie_url(@osts_monnaie)
    end

    assert_redirected_to osts_monnaies_url
  end
end
