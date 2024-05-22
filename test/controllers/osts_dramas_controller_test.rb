require "test_helper"

class OstsDramasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @osts_drama = osts_dramas(:one)
  end

  test "should get index" do
    get osts_dramas_url
    assert_response :success
  end

  test "should get new" do
    get new_osts_drama_url
    assert_response :success
  end

  test "should create osts_drama" do
    assert_difference("OstsDrama.count") do
      post osts_dramas_url, params: { osts_drama: { name: @osts_drama.name } }
    end

    assert_redirected_to osts_drama_url(OstsDrama.last)
  end

  test "should show osts_drama" do
    get osts_drama_url(@osts_drama)
    assert_response :success
  end

  test "should get edit" do
    get edit_osts_drama_url(@osts_drama)
    assert_response :success
  end

  test "should update osts_drama" do
    patch osts_drama_url(@osts_drama), params: { osts_drama: { name: @osts_drama.name } }
    assert_redirected_to osts_drama_url(@osts_drama)
  end

  test "should destroy osts_drama" do
    assert_difference("OstsDrama.count", -1) do
      delete osts_drama_url(@osts_drama)
    end

    assert_redirected_to osts_dramas_url
  end
end
