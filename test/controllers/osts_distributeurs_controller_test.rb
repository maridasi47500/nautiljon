require "test_helper"

class OstsDistributeursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @osts_distributeur = osts_distributeurs(:one)
  end

  test "should get index" do
    get osts_distributeurs_url
    assert_response :success
  end

  test "should get new" do
    get new_osts_distributeur_url
    assert_response :success
  end

  test "should create osts_distributeur" do
    assert_difference("OstsDistributeur.count") do
      post osts_distributeurs_url, params: { osts_distributeur: { name: @osts_distributeur.name } }
    end

    assert_redirected_to osts_distributeur_url(OstsDistributeur.last)
  end

  test "should show osts_distributeur" do
    get osts_distributeur_url(@osts_distributeur)
    assert_response :success
  end

  test "should get edit" do
    get edit_osts_distributeur_url(@osts_distributeur)
    assert_response :success
  end

  test "should update osts_distributeur" do
    patch osts_distributeur_url(@osts_distributeur), params: { osts_distributeur: { name: @osts_distributeur.name } }
    assert_redirected_to osts_distributeur_url(@osts_distributeur)
  end

  test "should destroy osts_distributeur" do
    assert_difference("OstsDistributeur.count", -1) do
      delete osts_distributeur_url(@osts_distributeur)
    end

    assert_redirected_to osts_distributeurs_url
  end
end
