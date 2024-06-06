require "test_helper"

class ArtbooksPublicAvertisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artbooks_public_averti = artbooks_public_avertis(:one)
  end

  test "should get index" do
    get artbooks_public_avertis_url
    assert_response :success
  end

  test "should get new" do
    get new_artbooks_public_averti_url
    assert_response :success
  end

  test "should create artbooks_public_averti" do
    assert_difference("ArtbooksPublicAverti.count") do
      post artbooks_public_avertis_url, params: { artbooks_public_averti: { name: @artbooks_public_averti.name } }
    end

    assert_redirected_to artbooks_public_averti_url(ArtbooksPublicAverti.last)
  end

  test "should show artbooks_public_averti" do
    get artbooks_public_averti_url(@artbooks_public_averti)
    assert_response :success
  end

  test "should get edit" do
    get edit_artbooks_public_averti_url(@artbooks_public_averti)
    assert_response :success
  end

  test "should update artbooks_public_averti" do
    patch artbooks_public_averti_url(@artbooks_public_averti), params: { artbooks_public_averti: { name: @artbooks_public_averti.name } }
    assert_redirected_to artbooks_public_averti_url(@artbooks_public_averti)
  end

  test "should destroy artbooks_public_averti" do
    assert_difference("ArtbooksPublicAverti.count", -1) do
      delete artbooks_public_averti_url(@artbooks_public_averti)
    end

    assert_redirected_to artbooks_public_avertis_url
  end
end
