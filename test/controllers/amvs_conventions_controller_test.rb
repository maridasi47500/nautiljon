require "test_helper"

class AmvsConventionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @amvs_convention = amvs_conventions(:one)
  end

  test "should get index" do
    get amvs_conventions_url
    assert_response :success
  end

  test "should get new" do
    get new_amvs_convention_url
    assert_response :success
  end

  test "should create amvs_convention" do
    assert_difference("AmvsConvention.count") do
      post amvs_conventions_url, params: { amvs_convention: { name: @amvs_convention.name } }
    end

    assert_redirected_to amvs_convention_url(AmvsConvention.last)
  end

  test "should show amvs_convention" do
    get amvs_convention_url(@amvs_convention)
    assert_response :success
  end

  test "should get edit" do
    get edit_amvs_convention_url(@amvs_convention)
    assert_response :success
  end

  test "should update amvs_convention" do
    patch amvs_convention_url(@amvs_convention), params: { amvs_convention: { name: @amvs_convention.name } }
    assert_redirected_to amvs_convention_url(@amvs_convention)
  end

  test "should destroy amvs_convention" do
    assert_difference("AmvsConvention.count", -1) do
      delete amvs_convention_url(@amvs_convention)
    end

    assert_redirected_to amvs_conventions_url
  end
end
