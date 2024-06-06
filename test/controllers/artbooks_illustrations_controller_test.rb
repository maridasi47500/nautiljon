require "test_helper"

class ArtbooksIllustrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artbooks_illustration = artbooks_illustrations(:one)
  end

  test "should get index" do
    get artbooks_illustrations_url
    assert_response :success
  end

  test "should get new" do
    get new_artbooks_illustration_url
    assert_response :success
  end

  test "should create artbooks_illustration" do
    assert_difference("ArtbooksIllustration.count") do
      post artbooks_illustrations_url, params: { artbooks_illustration: { name: @artbooks_illustration.name } }
    end

    assert_redirected_to artbooks_illustration_url(ArtbooksIllustration.last)
  end

  test "should show artbooks_illustration" do
    get artbooks_illustration_url(@artbooks_illustration)
    assert_response :success
  end

  test "should get edit" do
    get edit_artbooks_illustration_url(@artbooks_illustration)
    assert_response :success
  end

  test "should update artbooks_illustration" do
    patch artbooks_illustration_url(@artbooks_illustration), params: { artbooks_illustration: { name: @artbooks_illustration.name } }
    assert_redirected_to artbooks_illustration_url(@artbooks_illustration)
  end

  test "should destroy artbooks_illustration" do
    assert_difference("ArtbooksIllustration.count", -1) do
      delete artbooks_illustration_url(@artbooks_illustration)
    end

    assert_redirected_to artbooks_illustrations_url
  end
end
