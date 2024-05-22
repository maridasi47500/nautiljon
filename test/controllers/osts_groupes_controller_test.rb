require "test_helper"

class OstsGroupesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @osts_groupe = osts_groupes(:one)
  end

  test "should get index" do
    get osts_groupes_url
    assert_response :success
  end

  test "should get new" do
    get new_osts_groupe_url
    assert_response :success
  end

  test "should create osts_groupe" do
    assert_difference("OstsGroupe.count") do
      post osts_groupes_url, params: { osts_groupe: { name: @osts_groupe.name } }
    end

    assert_redirected_to osts_groupe_url(OstsGroupe.last)
  end

  test "should show osts_groupe" do
    get osts_groupe_url(@osts_groupe)
    assert_response :success
  end

  test "should get edit" do
    get edit_osts_groupe_url(@osts_groupe)
    assert_response :success
  end

  test "should update osts_groupe" do
    patch osts_groupe_url(@osts_groupe), params: { osts_groupe: { name: @osts_groupe.name } }
    assert_redirected_to osts_groupe_url(@osts_groupe)
  end

  test "should destroy osts_groupe" do
    assert_difference("OstsGroupe.count", -1) do
      delete osts_groupe_url(@osts_groupe)
    end

    assert_redirected_to osts_groupes_url
  end
end
