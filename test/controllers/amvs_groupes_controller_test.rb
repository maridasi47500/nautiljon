require "test_helper"

class AmvsGroupesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @amvs_groupe = amvs_groupes(:one)
  end

  test "should get index" do
    get amvs_groupes_url
    assert_response :success
  end

  test "should get new" do
    get new_amvs_groupe_url
    assert_response :success
  end

  test "should create amvs_groupe" do
    assert_difference("AmvsGroupe.count") do
      post amvs_groupes_url, params: { amvs_groupe: { name: @amvs_groupe.name } }
    end

    assert_redirected_to amvs_groupe_url(AmvsGroupe.last)
  end

  test "should show amvs_groupe" do
    get amvs_groupe_url(@amvs_groupe)
    assert_response :success
  end

  test "should get edit" do
    get edit_amvs_groupe_url(@amvs_groupe)
    assert_response :success
  end

  test "should update amvs_groupe" do
    patch amvs_groupe_url(@amvs_groupe), params: { amvs_groupe: { name: @amvs_groupe.name } }
    assert_redirected_to amvs_groupe_url(@amvs_groupe)
  end

  test "should destroy amvs_groupe" do
    assert_difference("AmvsGroupe.count", -1) do
      delete amvs_groupe_url(@amvs_groupe)
    end

    assert_redirected_to amvs_groupes_url
  end
end
