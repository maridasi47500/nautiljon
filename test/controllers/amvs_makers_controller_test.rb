require "test_helper"

class AmvsMakersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @amvs_maker = amvs_makers(:one)
  end

  test "should get index" do
    get amvs_makers_url
    assert_response :success
  end

  test "should get new" do
    get new_amvs_maker_url
    assert_response :success
  end

  test "should create amvs_maker" do
    assert_difference("AmvsMaker.count") do
      post amvs_makers_url, params: { amvs_maker: { name: @amvs_maker.name } }
    end

    assert_redirected_to amvs_maker_url(AmvsMaker.last)
  end

  test "should show amvs_maker" do
    get amvs_maker_url(@amvs_maker)
    assert_response :success
  end

  test "should get edit" do
    get edit_amvs_maker_url(@amvs_maker)
    assert_response :success
  end

  test "should update amvs_maker" do
    patch amvs_maker_url(@amvs_maker), params: { amvs_maker: { name: @amvs_maker.name } }
    assert_redirected_to amvs_maker_url(@amvs_maker)
  end

  test "should destroy amvs_maker" do
    assert_difference("AmvsMaker.count", -1) do
      delete amvs_maker_url(@amvs_maker)
    end

    assert_redirected_to amvs_makers_url
  end
end
