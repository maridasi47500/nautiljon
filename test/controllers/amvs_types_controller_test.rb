require "test_helper"

class AmvsTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @amvs_type = amvs_types(:one)
  end

  test "should get index" do
    get amvs_types_url
    assert_response :success
  end

  test "should get new" do
    get new_amvs_type_url
    assert_response :success
  end

  test "should create amvs_type" do
    assert_difference("AmvsType.count") do
      post amvs_types_url, params: { amvs_type: { name: @amvs_type.name } }
    end

    assert_redirected_to amvs_type_url(AmvsType.last)
  end

  test "should show amvs_type" do
    get amvs_type_url(@amvs_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_amvs_type_url(@amvs_type)
    assert_response :success
  end

  test "should update amvs_type" do
    patch amvs_type_url(@amvs_type), params: { amvs_type: { name: @amvs_type.name } }
    assert_redirected_to amvs_type_url(@amvs_type)
  end

  test "should destroy amvs_type" do
    assert_difference("AmvsType.count", -1) do
      delete amvs_type_url(@amvs_type)
    end

    assert_redirected_to amvs_types_url
  end
end
