require "test_helper"

class ArtbooksJvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artbooks_jv = artbooks_jvs(:one)
  end

  test "should get index" do
    get artbooks_jvs_url
    assert_response :success
  end

  test "should get new" do
    get new_artbooks_jv_url
    assert_response :success
  end

  test "should create artbooks_jv" do
    assert_difference("ArtbooksJv.count") do
      post artbooks_jvs_url, params: { artbooks_jv: { name: @artbooks_jv.name } }
    end

    assert_redirected_to artbooks_jv_url(ArtbooksJv.last)
  end

  test "should show artbooks_jv" do
    get artbooks_jv_url(@artbooks_jv)
    assert_response :success
  end

  test "should get edit" do
    get edit_artbooks_jv_url(@artbooks_jv)
    assert_response :success
  end

  test "should update artbooks_jv" do
    patch artbooks_jv_url(@artbooks_jv), params: { artbooks_jv: { name: @artbooks_jv.name } }
    assert_redirected_to artbooks_jv_url(@artbooks_jv)
  end

  test "should destroy artbooks_jv" do
    assert_difference("ArtbooksJv.count", -1) do
      delete artbooks_jv_url(@artbooks_jv)
    end

    assert_redirected_to artbooks_jvs_url
  end
end
